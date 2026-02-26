// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mc_hub/theme/custom_color.dart';

class CustomTheme {
  ThemeData get mainDarkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorSchema().zawaDarkSchema,
    fontFamily: Fonts.WDXLLubrifont.name,
  );

  ThemeData get mainLightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorSchema().zawaLightSchema,
    fontFamily: Fonts.WDXLLubrifont.name,
  );

  ThemeData titleTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    colorScheme:
        Theme.of(context).brightness == Brightness.dark
            ? CustomColorSchema().zawaDarkSchema
            : CustomColorSchema().zawaLightSchema,
    fontFamily: Fonts.LunaChord.name,
  );
}

enum Fonts { WDXLLubrifont, LunaChord }
