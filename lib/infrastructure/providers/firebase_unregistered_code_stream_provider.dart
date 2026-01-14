// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:switch_controller/models/unregistered_code.dart';

class FirebaseUnregisteredCodeStreamNotifier
    extends StreamNotifier<UnregisteredCode?> {
  final unregi_collection = FirebaseFirestore.instance.collection(
    "unregisteredCodes",
  );
  @override
  Stream<UnregisteredCode?> build() {
    return unregi_collection.snapshots().map((e) {
      return e.docs.isNotEmpty
          ? e.docs
                .map((e) => UnregisteredCode.fromJson(e.data()))
                .toList()
                .first
          : null;
    });
  }

  void updateUnregisteredCode(UnregisteredCode code) async {
    final querySnapshot = await unregi_collection
        .where("name", isEqualTo: code.name)
        .get();

    await querySnapshot.docs.first.reference.update(code.toJson());
  }

  void setUnregisteredCode(UnregisteredCode code) async {
    await unregi_collection.doc().set(code.toJson());
  }
}

final firebaseUnregisterCodeStreamProvider =
    StreamNotifierProvider.autoDispose<
      FirebaseUnregisteredCodeStreamNotifier,
      UnregisteredCode?
    >(FirebaseUnregisteredCodeStreamNotifier.new);
