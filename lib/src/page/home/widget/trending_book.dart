import 'package:book_app/src/model/book.dart';
import 'package:book_app/src/page/home/widget/category_title.dart';
import 'package:flutter/material.dart';

class TrendingBook extends StatelessWidget {
  final trendingList = Book.generateTrendingBook();
  TrendingBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle('Trending Book'),
        ListView.separated(
            padding: const EdgeInsets.all(20),
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final book = trendingList[index];
              return GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(book.imgUrl!),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  book.name!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Colors.orange[300],
                              )
                            ],
                          ),
                          Text(
                            book.author!,
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            book.desc!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: trendingList.length)
      ],
    );
  }
}
