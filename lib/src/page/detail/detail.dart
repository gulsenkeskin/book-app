import 'package:book_app/src/model/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 550,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(30)),
                  child: Image.asset(book.imgUrl!,
                  fit: BoxFit.fitWidth,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
