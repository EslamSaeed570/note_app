import 'package:flutter/material.dart';
import 'package:notesapp/widgets/add_note_bottem_sheet.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottemSheet();
              });
        },
        backgroundColor: const Color.fromARGB(255, 5, 197, 235),
        shape: const CircleBorder(),
        mini: true,
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
