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
  factory BookDataModel.fromJson(Map<String, dynamic> json) => BookDataModel(
      bookmodelid: json['id'],
      bookmodeltitle: json['title'],
      bookmodelauthor: json['author'],
      // bookmodelcategory: json['category'],
      bookmodelprice: json['price']);
//from app to json
  Map<String, dynamic> toJson() => {
        'id': bookmodelid,
        'title': bookmodeltitle,
        'author': bookmodelauthor,
        // 'category': bookmodelcategory,
        'price': bookmodelprice,
      };
}
