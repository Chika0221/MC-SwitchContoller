// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

// Project imports:
import 'package:switch_controller/firebase_options.dart';
import 'package:switch_controller/infrastructure/providers/connect_provider.dart';
import 'package:switch_controller/infrastructure/providers/route_provider.dart';
import 'package:switch_controller/theme/custom_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await RiveNative.init();

  runApp(const ProviderScope(child: SwitchControllerApp()));
}

class SwitchControllerApp extends HookConsumerWidget {
  const SwitchControllerApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cTheme = CustomTheme();

    useEffect(() {
      return () {
        ref.read(connectProvider.notifier).disconnect();
      };
    }, []);

    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: cTheme.mainLightTheme,
      darkTheme: cTheme.mainDarkTheme,
      routerConfig: ref.watch(routeProvider),
    );
  }
}

enum HeroTags { customFab }
