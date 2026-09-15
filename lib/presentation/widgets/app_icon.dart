import 'package:flutter/material.dart';

/// A simple widget that displays an icon with customizable [size] and [color].
class AppIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;

  const AppIcon({super.key, required this.icon, this.size = 24.0, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: size, color: color);
  }
}
