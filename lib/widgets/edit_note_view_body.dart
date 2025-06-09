import 'package:flutter/material.dart';

import 'custom_appbar.dart';

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
        ],
      ),
    );
    ;
  }
}
