import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

import 'custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
