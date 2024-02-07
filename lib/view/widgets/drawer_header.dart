import 'package:books/constants/app_themes.dart';
import 'package:flutter/material.dart';
import '../../constants/strings.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.appSubTilte,
            style:AppThemes.appSubtitle1(
                 fontSize: height * 0.03),
          ),
          Text(
            Strings.appTitle,
            style: AppThemes.drawerAppTitle(
                 fontSize: height * 0.05),
          ),
        ],
      ),
    );
  }
}