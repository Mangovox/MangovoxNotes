import 'dart:ui';

import 'package:mangovox_md_notes/editor/enums/text_color_token.dart';
import 'package:mangovox_md_notes/presentation/ui/colors.dart';

/// A utility class for managing the mapping between text color tokens and their corresponding text colors for editor
///
/// The `TextColorsPalette` class provides a mapping between `TextColorToken` values and their
/// corresponding text colors for both light and dark themes. It allows you to retrieve
/// the color associated with a specific token and vice versa, depending on whether the theme is light or dark.
class TextColorsPalette {
  /// A mapping of [TextColorToken] values to their corresponding text colors for light theme.
  static const Map<TextColorToken, Color> _light = {
    TextColorToken.red: ColorsLight.textRed,
    TextColorToken.orange: ColorsLight.textOrange,
    TextColorToken.yellow: ColorsLight.textYellow,
    TextColorToken.green: ColorsLight.textGreen,
    TextColorToken.blue: ColorsLight.textBlue,
    TextColorToken.purple: ColorsLight.textPurple,
    TextColorToken.gray: ColorsLight.textGray,
  };

  /// A mapping of [TextColorToken] values to their corresponding text colors for dark theme.
  static const Map<TextColorToken, Color> _dark = {
    TextColorToken.red: ColorsDark.textRed,
    TextColorToken.orange: ColorsDark.textOrange,
    TextColorToken.yellow: ColorsDark.textYellow,
    TextColorToken.green: ColorsDark.textGreen,
    TextColorToken.blue: ColorsDark.textBlue,
    TextColorToken.purple: ColorsDark.textPurple,
    TextColorToken.gray: ColorsDark.textGray,
  };

  /// A reverse mapping of text colors to their corresponding [TextColorToken] values for light theme.
  static final Map<Color, TextColorToken> _lightReverse = _light.map(
    (token, color) => MapEntry(color, token),
  );

  /// A reverse mapping of text colors to their corresponding [TextColorToken] values for dark theme.
  static final Map<Color, TextColorToken> _darkReverse = _dark.map(
    (token, color) => MapEntry(color, token),
  );

  /// Retrieves the text color associated with the given [TextColorToken] for the specified theme.
  static Color colorOf(TextColorToken token, {required bool isDark}) {
    return (isDark ? _dark : _light)[token]!;
  }

  /// Retrieves the [TextColorToken] associated with the given text color for the specified theme.
  static TextColorToken? tokenOf(Color color, {required bool isDark}) {
    return (isDark ? _darkReverse : _lightReverse)[color];
  }
}
