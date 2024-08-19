import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.textTitle, required this.icon, this.onPressed});

  final String textTitle;
  final IconData icon;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
