import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';

/// A toolbar widget that can be used in a Scaffold.
///
/// Example:
/// ```dart
/// Scaffold(
///   appBar: AppToolbar(
///   title: 'Title',
///   actions: [
///     IconButton(
///       icon: const Icon(Icons.settings),
///       onPressed: () {},
///     ),
///   ],
/// )
/// ```
class AppToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double toolbarHeight;
  final TextStyle? titleStyle;
  final List<Widget>? actions;

  const AppToolbar({
    super.key,
    this.title,
    this.toolbarHeight = kToolbarHeight,
    this.titleStyle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final router = GoRouter.of(context);

    final Widget? leading = router.canPop()
        ? IconButton(
            icon: const Icon(TablerIcons.arrow_left),
            onPressed: () => router.pop(),
          )
        : null;

    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title ?? '', style: titleStyle ?? textTheme.titleLarge),
      centerTitle: false,
      toolbarHeight: toolbarHeight,
      leading: leading,
      actions: actions
          ?.map(
            (action) => Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 6),
              child: action,
            ),
          )
          .toList(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
