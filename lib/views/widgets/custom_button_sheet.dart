import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/cosnstants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
