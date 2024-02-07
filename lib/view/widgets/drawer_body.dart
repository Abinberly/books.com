import 'package:books/constants/app_themes.dart';
import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final VoidCallback onTap;
  const DrawerBody(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ListTile(
      leading: Icon(
        leading,
        color: AppThemes.primaryGreen,
        size: height * 0.025,
      ),
      title: Text(
        title,
        style: AppThemes.drawerText(fontSize: height * 0.025),
      ),
      trailing: Icon(
        trailing,
        color: AppThemes.primaryGreen,
        size: height * 0.02,
      ),
      onTap: onTap,
    );
  }
}
