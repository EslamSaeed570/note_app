import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.icon, this.onPressed,
  });
  final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.02),
          borderRadius: BorderRadius.circular(16)),
      child:  Center(
        child: IconButton(
          onPressed:onPressed ,
         icon: Icon(icon) ,
         iconSize: 15,
        
        ),
      ),
    );
  }
}
