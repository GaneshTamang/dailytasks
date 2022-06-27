part of bookcard;

class DropdownPriceChange extends StatefulWidget {
  final BookDataModel datamodprice;
  const DropdownPriceChange({Key? key, required this.datamodprice})
      : super(key: key);

  @override
  State<DropdownPriceChange> createState() => _DropdownPriceChangeState();
}

class _DropdownPriceChangeState extends State<DropdownPriceChange> {
  String usd = '\$';
  //later come from db and procces
  late double price;
  //initial price
  late double teampnewprice;
  late List<String> mydrop;
  late dynamic dropdowncurrentValue = usd;
  //always write change para abovebuld to set state

  @override
  void initState() {
    super.initState();
    mydrop = <String>[
      'NpRs',
      usd,
      'IndRs',
    ];
    price = widget.datamodprice.bookmodelprice;
    teampnewprice = price;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(teampnewprice.toStringAsFixed(2)),
          DropdownButton<String>(
            value: dropdowncurrentValue,
            style: const TextStyle(color: Colors.red),
            //underline for dropdown front view
            underline: Container(
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? dropselectedvalue) {
              setState(() {
                dropdowncurrentValue = dropselectedvalue!;
                if (dropdowncurrentValue == '\$') {
                  teampnewprice = price;
                }
                if (dropdowncurrentValue == 'NpRs') {
                  teampnewprice = 124.49 * price;
                }
                if (dropdowncurrentValue == 'IndRs') {
                  teampnewprice = 78.26 * price;
                }
              });
            },
            //getting list from my list named to app
            items: mydrop
                .map<DropdownMenuItem<String>>((String proccesvalueforapp) {
              return DropdownMenuItem<String>(
                value: proccesvalueforapp,
                child: Text(proccesvalueforapp),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
