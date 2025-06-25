import 'package:flutter/material.dart';

import 'package:notesapp/views/widgets/add_note_bottem_sheet.dart';
import 'package:notesapp/views/widgets/cosnstants.dart';
import 'package:notesapp/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              context: context,
              builder: (context) {
                return const AddNoteBottemSheet();
              });
        },
        backgroundColor: kPrimaryColor,
        shape: const CircleBorder(),
        mini: true,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
