import 'package:books/constants/app_themes.dart';
import 'package:books/view/widgets/app_icon_button.dart';
import 'package:books/view/widgets/books_list_tile.dart';
import 'package:books/view/widgets/drawer_body.dart';
import 'package:books/view/widgets/drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/strings.dart';
import '../controller/books_controller.dart';

class BooksListView extends StatelessWidget {
  BooksListView({super.key});
  final BooksController booksController = Get.find();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.primaryGreen,
        leading: Builder(builder: (context) {
          return AppIconButton(
              icon: Icons.menu,
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              iconColor: AppThemes.subTitleColor);
        }),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.appSubTilte,
              style: AppThemes.appSubtitle1(fontSize: height * 0.02),
            ),
            Text(
              Strings.appTitle,
              style: AppThemes.appTitle(fontSize: height * 0.04),
            ),
          ],
        ),
        actions: [
          AppIconButton(
              icon: Icons.notifications_outlined,
              onTap: () {},
              iconColor: AppThemes.subTitleColor),
          AppIconButton(
              icon: Icons.favorite_border_outlined,
              onTap: () {},
              iconColor: AppThemes.subTitleColor),
          AppIconButton(
              icon: Icons.shopping_bag_outlined,
              onTap: () {},
              iconColor: AppThemes.subTitleColor)
        ],
      ),
      body: Obx(
        () => booksController.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 1.0,
                            crossAxisSpacing: 1.0),
                    itemCount: booksController.books.length,
                    itemBuilder: (context, index) {
                      final book = booksController.books[index];
                      return BooksListTile(
                        title: book.title,
                        authors: book.authors,
                        subtitle: book.subtitle,
                        image: book.image,
                        onTap: () {
                          print(book.url);
                        },
                      );
                    }),
              ),
      ),
      drawer: Drawer(
        backgroundColor: AppThemes.lightGreenColor,
        width: width * 0.6,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DrawerHeaderWidget(),
              DrawerBody(
                  title: Strings.home,
                  leading: Icons.home_outlined,
                  trailing: Icons.arrow_forward_ios,
                  onTap: () {}),
              DrawerBody(
                  title: Strings.favourites,
                  leading: Icons.favorite_outline,
                  trailing: Icons.arrow_forward_ios,
                  onTap: () {}),
              DrawerBody(
                  title: Strings.cart,
                  leading: Icons.shopping_bag_outlined,
                  trailing: Icons.arrow_forward_ios,
                  onTap: () {}),
              DrawerBody(
                  title: Strings.logOut,
                  leading: Icons.logout_outlined,
                  trailing: Icons.arrow_forward_ios,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
