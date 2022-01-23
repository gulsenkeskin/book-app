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
                  child: Image.asset(
                    book.imgUrl!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    top: 56,
                    left: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[900], shape: BoxShape.circle),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 250),
                child: Text(
                  book.name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24, height: 1.2),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                book.author!,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIconText(Icons.star, Colors.orange[300]!,
                      '${book.score}(${book.review}k)'),
                  const SizedBox(
                    width: 10,
                  ),
                  _buildIconText(
                      Icons.visibility, Colors.white, '${book.view}M Read'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: book.type!
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Chip(
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            label: Text(e),
                          ),
                        ),
                      )
                      .toList()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(book.desc!),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(Icons.add, Colors.grey[800]!, 'Add To Library'),
                  const SizedBox(width: 15,),
                  _buildButton(Icons.menu_book, const Color(0xFF6741FF), 'Read Now')
                ],
              ),)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, Color color, String text){
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius
              .circular(10),
        ),
        ),onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white,size: 20,),
            const SizedBox(width: 5,),
            Text(text, style: const TextStyle(
              color: Colors.white,
              fontSize: 12,


            ),)
          ],
        ),
      ),
    );
  }



  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
