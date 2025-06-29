import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cuit/notes_cubit.dart';

import 'add_note_form.dart';
import 'show_snack_bar.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 12,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).featchAllNotes();
              showSnackBar(context,'Add Note Success');
              Navigator.pop(context);
            }
            if (state is AddNoteFailure) {
              print('failed ${state.errorMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }

}
