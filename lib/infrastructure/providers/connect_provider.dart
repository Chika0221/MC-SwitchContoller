// Dart imports:
import 'dart:async';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/models/connect.dart';
import 'package:switch_controller/models/macro.dart';
import 'package:switch_controller/models/workflow.dart';

class ConnectableNotifier extends AsyncNotifier<List<Connect>> {
  final connect_collection = FirebaseFirestore.instance.collection('connect');

  @override
  FutureOr<List<Connect>> build() {
    return _fetchConnects();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchConnects());
  }

  Future<List<Connect>> _fetchConnects() async {
    final snapshot = await connect_collection.get();
    return snapshot.docs.map((doc) => Connect.fromJson(doc.data())).toList();
  }
}

class ConnectNotifier extends Notifier<Connect?> {
  final connect_collection = FirebaseFirestore.instance.collection('connect');
  StreamSubscription<DocumentSnapshot>? _subscription;

  @override
  Connect? build() {
    ref.onDispose(() => _subscription?.cancel());
    return null;
  }

  void _startListening(String hostID) {
    _subscription?.cancel();
    _subscription = connect_collection.doc(hostID).snapshots().listen((doc) {
      if (doc.exists && doc.data() != null) {
        state = Connect.fromJson(doc.data() as Map<String, dynamic>);
      }
    });
  }

  Future<void> sendMacro(Macro macro) async {
    if (state == null) return;
    final connect = state!.copyWith(macroQueue: [...?state?.macroQueue, macro]);

    await connect_collection.doc(connect.hostID).update(connect.toJson());
  }

  Future<void> sendWorkflow(Workflow workflow) async {
    if (state == null) return;
    final connect = state!.copyWith(
      workflowQueue: [...?state?.workflowQueue, workflow],
    );

    await connect_collection.doc(connect.hostID).update(connect.toJson());
  }

  Future<void> disconnect() async {
    if (state == null) return;
    final connect = state!.copyWith(
      controllerID: null,
      controllerName: null,
      state: ConnectState.ready,
    );

    await connect_collection.doc(connect.hostID).update(connect.toJson());
    _subscription?.cancel();
    _subscription = null;
    state = null;
  }

  void setConnect(Connect connect) {
    state = connect;
    if (connect.hostID != null) {
      _startListening(connect.hostID!);
    }
  }

  Future<void> connect(Connect connect) async {
    final deviceInfo = await DeviceInfoPlugin().androidInfo;

    final connectedConnect = connect.copyWith(
      controllerID: deviceInfo.id,
      controllerName: deviceInfo.name,
      state: ConnectState.connected,
    );

    await updateConnect(connectedConnect);
  }

  Future<void> updateConnect(Connect connect) async {
    await connect_collection.doc(connect.hostID).update(connect.toJson());
    state = connect;
  }
}

final connectableProvider =
    AsyncNotifierProvider<ConnectableNotifier, List<Connect>>(
      ConnectableNotifier.new,
    );

final connectProvider = NotifierProvider<ConnectNotifier, Connect?>(
  ConnectNotifier.new,
);

final isConnectedProvider = Provider<bool>((ref) {
  final connect = ref.watch(connectProvider);
  return connect?.state == ConnectState.connected;
});
