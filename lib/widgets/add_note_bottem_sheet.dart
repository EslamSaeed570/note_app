import 'package:flutter/material.dart';

import 'package:notesapp/widgets/custom_button_sheet.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(                              
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonSheet(),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
