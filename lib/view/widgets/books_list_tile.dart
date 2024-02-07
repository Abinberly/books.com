import 'package:flutter/material.dart';
import '../../constants/app_themes.dart';

class BooksListTile extends StatelessWidget {
  final String title;
  final String authors;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  const BooksListTile(
      {super.key,
      required this.title,
      required this.authors,
      required this.subtitle,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.grey[200],
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                image,
                height: height * 0.25,
                width: width * 8,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Text(
                title,
                style: AppThemes.appSubtitle(fontSize: height * 0.02),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
