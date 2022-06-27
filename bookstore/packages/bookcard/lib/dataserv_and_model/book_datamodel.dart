part of bookcard;

class BookDataModel {
  //nullable
  final int? bookmodelid;
  final String bookmodeltitle;
  final String bookmodelauthor;
  // final String bookmodelcategory;
  final double bookmodelprice;

  const BookDataModel(
      {required this.bookmodeltitle,
      required this.bookmodelauthor,
      // required this.bookmodelcategory,
      required this.bookmodelprice,
      this.bookmodelid});
//from json to app
  factory BookDataModel.myfromJsonisrecieve(
          Map<String, dynamic> reciveddataMap) =>
      BookDataModel(
          bookmodelid: reciveddataMap['id'],
          bookmodeltitle: reciveddataMap['title'],
          bookmodelauthor: reciveddataMap['author'],
          // bookmodelcategory: json['category'],
          bookmodelprice: reciveddataMap['price']);
//from app to json
  Map<String, dynamic> mytoJsonistosend() => {
        'id': bookmodelid,
        'title': bookmodeltitle,
        'author': bookmodelauthor,
        // 'category': bookmodelcategory,
        'price': bookmodelprice,
      };
}
