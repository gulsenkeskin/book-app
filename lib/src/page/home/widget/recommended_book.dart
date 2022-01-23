import 'package:book_app/src/model/book.dart';
import 'package:book_app/src/page/home/widget/category_title.dart';
import 'package:book_app/src/page/home/widget/coming_book.dart';
import 'package:flutter/material.dart';

class RecommendedBook extends StatelessWidget {
  final recommendedList = Book.generateRecommendedBook();
   RecommendedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle('Recommended for you'),
        ComingBook(),
        const RecommendedBook(),
      ],
    );
  }
}
