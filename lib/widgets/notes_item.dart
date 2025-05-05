import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(
        bottom: 22,
        top: 12,
        left: 12,
      ),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD79),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            subtitle: Text(
              'Build your Career with Eslam Saeed',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.4),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'May 21, 2022',
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(.4)),
            ),
          ),
        ],
      ),
    );
  }
}
