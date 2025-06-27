import 'package:flutter/material.dart';

import '../../models/note_model.dart';
import 'colors_list_view.dart';
import 'cosnstants.dart';

class EditNotesColorsListView extends StatefulWidget {
  const EditNotesColorsListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsListView> createState() =>
      _EditNotesColorsListViewState();
}

class _EditNotesColorsListViewState extends State<EditNotesColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;

                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
