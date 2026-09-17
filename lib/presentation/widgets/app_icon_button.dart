import 'package:flutter/material.dart';

/// A custom icon button for use in the app.
///
/// Example:
///
/// ```dart
/// AppIconButton(
///   icon: Icons.add,
///   onPressed: () => debugPrint("add"),
/// )
/// ```
class AppIconButton extends StatelessWidget {
  final IconData icon;
  final String? tooltip;
  final Color? color;
  final VoidCallback? onPressed;

  const AppIconButton({
    super.key,
    required this.icon,
    this.tooltip,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      icon: Icon(icon, color: color ?? colorScheme.onSurface, size: 24),
      onPressed: onPressed,
      tooltip: tooltip,
    );
  }
}
