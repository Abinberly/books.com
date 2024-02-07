import 'package:books/controller/books_controller.dart';
import 'package:books/view/books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(BooksController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  BooksListView(),
    );
  }
}

