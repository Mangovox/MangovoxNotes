import 'package:flutter/material.dart';
import 'package:mangovox_md_notes/presentation/ui/colors.dart';

/// A utility class for defining the application's color schemes.
///
/// This class provides static methods to create light and dark [ColorScheme] instances
/// using the predefined colors from [ColorsLight] and [ColorsDark].
class ColorSchemes {
  static ColorScheme lightScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: ColorsLight.primary,
      onPrimary: ColorsLight.onPrimary,
      primaryContainer: ColorsLight.primaryContainer,
      onPrimaryContainer: ColorsLight.onPrimaryContainer,
      secondary: ColorsLight.secondary,
      onSecondary: ColorsLight.onSecondary,
      secondaryContainer: ColorsLight.secondaryContainer,
      onSecondaryContainer: ColorsLight.onSecondaryContainer,
      tertiary: ColorsLight.tertiary,
      onTertiary: ColorsLight.onTertiary,
      tertiaryContainer: ColorsLight.tertiaryContainer,
      onTertiaryContainer: ColorsLight.onTertiaryContainer,
      error: ColorsLight.error,
      onError: ColorsLight.onError,
      errorContainer: ColorsLight.errorContainer,
      onErrorContainer: ColorsLight.onErrorContainer,
      surface: ColorsLight.surface,
      onSurface: ColorsLight.onSurface,
      onSurfaceVariant: ColorsLight.onSurfaceVariant,
      outline: ColorsLight.outline,
      outlineVariant: ColorsLight.outlineVariant,
      shadow: ColorsLight.shadow,
      scrim: ColorsLight.scrim,
      inverseSurface: ColorsLight.inverseSurface,
      onInverseSurface: ColorsLight.onInverseSurface,
      inversePrimary: ColorsLight.inversePrimary,
      surfaceTint: ColorsLight.surfaceTint,
    );
  }

  static ColorScheme darkScheme() {
    return ColorScheme(
      brightness: Brightness.dark,
      primary: ColorsDark.primary,
      onPrimary: ColorsDark.onPrimary,
      primaryContainer: ColorsDark.primaryContainer,
      onPrimaryContainer: ColorsDark.onPrimaryContainer,
      secondary: ColorsDark.secondary,
      onSecondary: ColorsDark.onSecondary,
      secondaryContainer: ColorsDark.secondaryContainer,
      onSecondaryContainer: ColorsDark.onSecondaryContainer,
      tertiary: ColorsDark.tertiary,
      onTertiary: ColorsDark.onTertiary,
      tertiaryContainer: ColorsDark.tertiaryContainer,
      onTertiaryContainer: ColorsDark.onTertiaryContainer,
      error: ColorsDark.error,
      onError: ColorsDark.onError,
      errorContainer: ColorsDark.errorContainer,
      onErrorContainer: ColorsDark.onErrorContainer,
      surface: ColorsDark.surface,
      onSurface: ColorsDark.onSurface,
      onSurfaceVariant: ColorsDark.onSurfaceVariant,
      outline: ColorsDark.outline,
      outlineVariant: ColorsDark.outlineVariant,
      shadow: ColorsDark.shadow,
      scrim: ColorsDark.scrim,
      inverseSurface: ColorsDark.inverseSurface,
      onInverseSurface: ColorsDark.onInverseSurface,
      inversePrimary: ColorsDark.inversePrimary,
      surfaceTint: ColorsDark.surfaceTint,
    );
  }
}
