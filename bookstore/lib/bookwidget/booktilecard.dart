import 'package:flutter/material.dart';
import 'package:local_database/models/book_datamodel.dart';

class BookWidget extends StatelessWidget {
  final BookDataModel book;
  //dispatching on section
  final VoidCallback tapforedit;
  final VoidCallback longpressfordelete;
  const BookWidget(
      {Key? key,
      required this.book,
      required this.tapforedit,
      required this.longpressfordelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: longpressfordelete,
      onTap: tapforedit,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6),
        //content
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title here from data model
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    book.bookmodeltitle,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text('Author:${book.bookmodelauthor}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text('Category:${book.bookmodelcategory}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text('Price:${book.bookmodelprice}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
