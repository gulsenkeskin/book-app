import 'package:book_app/src/model/book.dart';
import 'package:book_app/src/page/home/widget/category_title.dart';
import 'package:book_app/src/page/home/widget/coming_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedBook extends StatelessWidget {
  final recommendedList = Book.generateRecommendedBook();
  RecommendedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle('Recommended for you'),
        SizedBox(
          height: 250,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              itemBuilder: (_, index) {
                var book = recommendedList[index];
                return Stack(
                  children: [
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              book.imgUrl!,
                              fit: BoxFit.cover,
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (_, index) => SizedBox(
                    width: 15,
                  ),
              itemCount: recommendedList.length),
        )
      ],
    );
  }
}
