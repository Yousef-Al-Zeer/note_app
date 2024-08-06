import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.textTitle, required this.icon});

  final String textTitle;
  final IconData icon;

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
          icon: icon,
        ),
      ],
    );
  }
}
