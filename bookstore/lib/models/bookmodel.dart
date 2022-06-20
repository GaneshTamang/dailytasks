class Books {
  final int? bookid;
  // author, name, bookid, category, price
  final String bookname;

  Books({this.bookid, required this.bookname});
//actions from map
  factory Books.fromMAp(Map<String, dynamic> json) => Books(
//creating const and passing value if initialized
        bookid: json['id'], bookname: json['name'],
      );
  Map<String, dynamic> toMap() {
    return {
      'id': bookid,
      'name': bookname,
    };
  }
}
