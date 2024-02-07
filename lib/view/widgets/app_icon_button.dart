import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;
  const AppIconButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon),
      color: iconColor,
    );
  }
}
