class Book {
  String? imgUrl;
  String? name;
  String? author;
  num? score;
  num? review;
  num? view;
  List<String>? type;
  String? desc;
  Book(
    this.imgUrl,
    this.name,
    this.author,
    this.score,
    this.review,
    this.view,
    this.type,
    this.desc,
  );

  static List<Book> generateRecommendedBook() {
    return [
      Book(
          'assets/images/book1.jpg',
          'Harry Potter and the Deathly Hallows',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book2.jpg',
          'Harry Potter and the Order of the Phoenix',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book3.jpg',
          'Harry Potter and the Prisoner of Azkaban',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book4.jpg',
          'Harry Potter Sihirli Yaratıklar',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book5.jpg',
          'Harry Potter ve Felsefe Taşı',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
    ];
  }

  static List<Book> generateTrendingBook() {
    return [
      Book(
          'assets/images/book6.jpg',
          'Harry Potter ve Ateş Kadehi',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book7.jpg',
          'Harry Potter ve Azkaban Tutsağı',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book8.jpg',
          'Harry Potter ve Melez Prens',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book9.jpg',
          'Harry Potter ve Sırlar Odası',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
      Book(
          'assets/images/book10.jpg',
          'Harry Potter ve Zümrüdü Anka Yoldaşlığı',
          'J.K. Rowling',
          4.9,
          107.3,
          2.7,
          ['Action', 'Fantasy', 'Supernatural'],
          'Harry Potter and the Deathly Hallows is the seventh and final book in the Harry Potter series by J. K. Rowling. It was released on 21 July, 2007 at 00:01 am local time in English-speaking countries.'),
    ];
  }
}
