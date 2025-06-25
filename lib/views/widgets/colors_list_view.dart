import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: isActive
          ? CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 34,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 38,
            ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffCBE896),
    Color(0xff504746),
    Color(0xffbeb7a4),
    Color(0xffFF7F11),
    Color(0xffFF1B1C),
    Color(0xffB6244F),
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
