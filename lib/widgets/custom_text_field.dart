import 'package:flutter/material.dart';
import 'package:notesapp/widgets/cosnstants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: BulidBorder(),
          enabledBorder: BulidBorder(),
          focusedBorder: BulidBorder(kPrimaryColor)),
    );
  }
}

OutlineInputBorder BulidBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
