// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

// Project imports:
import 'package:switch_controller/firebase_options.dart';
import 'package:switch_controller/pages/home_page/home_page.dart';
import 'package:switch_controller/theme/custom_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await RiveNative.init();

  runApp(ProviderScope(child: Application()));
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    /// Try changing this and hot reloading the application.
    ///
    /// To create a custom theme:
    /// ```shell
    /// dart forui theme create [theme template].
    /// ```
    // final theme = FThemes.zinc.light;

    // return MaterialApp(
    //   // supportedLocales: FLocalizations.supportedLocales,
    //   // localizationsDelegates: const [...FLocalizations.localizationsDelegates],
    //   // MaterialApp's theme is also animated by default with the same duration and curve.
    //   // See https://api.flutter.dev/flutter/material/MaterialApp/themeAnimationStyle.html for how to configure this.
    //   //
    //   // There is a known issue with implicitly animated widgets where their transition occurs AFTER the theme's.
    //   theme: theme.toApproximateMaterialTheme(),
    //   // theme: CustomTheme().mainLightTheme,
    //   builder: (_, child) => FAnimatedTheme(
    //     data: theme,
    //     child: FToaster(child: child!),
    //   ),
    //   // You can also replace FScaffold with Material Scaffold.
    //   home: HomePage(),
    // );

    final cTheme = CustomTheme();

    return MaterialApp(
      theme: cTheme.mainLightTheme,
      darkTheme: cTheme.mainDarkTheme,
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
