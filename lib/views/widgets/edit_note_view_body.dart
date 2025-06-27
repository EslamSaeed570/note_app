import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cuit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import 'colors_list_view.dart';
import 'cosnstants.dart';
import 'custom_appbar.dart';
import 'custom_text_form_field.dart';
import 'edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).featchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            onChanged: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 15,
          ),
          EditNotesColorsListView(note: widget.note),
        ],
      ),
    );
  }
}

