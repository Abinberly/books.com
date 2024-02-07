// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:books/model/books_data_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BooksController extends GetxController {
  var isLoading = true.obs;
  static const int pageSize = 10;
  int currentPage = 1;
  static const String apiUrl = "https://www.dbooks.org/api/recent";
  var isLastPage = false.obs;
  RxString errorMessage = ''.obs;
  RxList<BooksDataModel> books = <BooksDataModel>[].obs;
  @override
  void onInit()async{
    await fetchBooksDetail();
    super.onInit();
  }
  Future<void> fetchBooksDetail() async {
    isLoading(true);
    try {
      final http.Response response = await http
          .get(Uri.parse('$apiUrl?page=$currentPage&limit=$pageSize'));
      if (response.statusCode == 200) {
        final List<dynamic> newBookList = jsonDecode(response.body)['books'];
        books.clear();
        books = <BooksDataModel>[].obs;
        books.assignAll(newBookList
            .map((json) => BooksDataModel.fromJson(json))
            .cast<BooksDataModel>());
        // print(books);
        if (newBookList.isNotEmpty) {
          currentPage++;
        } else {
          isLastPage(true);
        }
      } else {
        errorMessage.value =
            'Server responded with status code ${response.statusCode}';
      }
    } catch (e) {
      errorMessage.value = 'An unexpected error occurred. Please try again later.';
      print("Error while getting the data: $e");
    } finally {
      isLoading(false);
    }
  }
  void loadMoreProducts(){
    if(!isLoading.value&&isLoading.value){
      fetchBooksDetail();
    }
  }
}
