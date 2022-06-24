import 'package:flutter/material.dart';
import 'package:local_database/models/book_datamodel.dart';
import 'package:local_database/screens/booklist/dropdown_price_change.dart';

class BookTilecard extends StatelessWidget {
  //created bookmodel
  final BookDataModel createdbook;
  //dispatching on section
  final VoidCallback tapforedit;
  final VoidCallback longpressfordelete;
  //contructor
  const BookTilecard(
      {Key? key,
      required this.createdbook,
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
                    createdbook.bookmodeltitle,
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
                Center(
                  child: Text('Author:${createdbook.bookmodelauthor}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                ),
                // Text('Category:${createdbook.bookmodelcategory}',
                // style: const TextStyle(
                // fontSize: 16, fontWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text('Price:${createdbook.bookmodelprice}',
                    //     style: const TextStyle(
                    //         fontSize: 16, fontWeight: FontWeight.w400)),
                    const Text('Price:'),
                    DropdownPriceChange(datamodprice: createdbook)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
