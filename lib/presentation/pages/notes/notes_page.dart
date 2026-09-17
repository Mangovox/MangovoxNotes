import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:mangovox_md_notes/presentation/widgets/app_icon_button.dart';
import 'package:mangovox_md_notes/presentation/widgets/app_toolbar.dart';

/// Notes page that displays all notes and allows to create new notes and folders.
class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppToolbar(
        title: "Заметки",
        actions: [
          AppIconButton(
            icon: TablerIcons.plus,
            color: colorScheme.primary,
            onPressed: () => debugPrint("add"),
          ),
        ],
      ),
    );
  }
}
