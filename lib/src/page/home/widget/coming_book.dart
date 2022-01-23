import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ComingBook extends StatelessWidget {
  ComingBook({Key? key}) : super(key: key);

  final upcomings = [
    'assets/images/upcoming1.jpeg',
    'assets/images/upcoming2.jpeg',
    'assets/images/upcoming3.jpeg',
  ];

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: 120,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: upcomings
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.black,
                                    Colors.black45,
                                    Colors.black12,
                                    Colors.black.withOpacity(0)
                                  ])),
                        )
                      ],
                    ))
                .toList(),
          ),
          Positioned(
              child: SmoothPageIndicator(
            controller: _pageController,
            count: upcomings.length,
          ))
        ],
      ),
    );
  }
}
