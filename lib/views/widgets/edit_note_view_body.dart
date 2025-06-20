import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
    ;
  }
}
