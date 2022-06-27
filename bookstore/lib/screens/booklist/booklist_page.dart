import 'package:bookcard/ui/bookcard.dart';
import 'package:flutter/material.dart';

import '../addeditbook_screen.dart';

class BooklistScreen extends StatefulWidget {
  const BooklistScreen({Key? key}) : super(key: key);

  @override
  State<BooklistScreen> createState() => _BooklistScreenState();
}

class _BooklistScreenState extends State<BooklistScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('Books List'),
            centerTitle: true,
          ),
          //floating action button to add data
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddBookScreen()));
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          //creating table list that may be nullable
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  //search bar

                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'search book'),
                    onChanged: searchbook,
                  ),
                ),
              ),
              Expanded(
                child: FutureBuilder<List<BookDataModel>?>(
                  //from services service called  function getall notes
                  future: MyDatabaseHelperServ.mygetAllBooks(),

                  //now all things to or from datamodel are considered each snapshot object
                  //building async snapshot and holding tenmp  snap
                  builder: (context, AsyncSnapshot<List<BookDataModel>?> snap) {
                    //build table for null or other conditions
                    //if waiting
                    if (snap.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } //has error put snap error as sting
                    else if (snap.hasError) {
                      return Center(child: Text(snap.error.toString()));
                    } //if has data
                    else if (snap.hasData) {
                      //two conditions if has data for update and add
                      //for update
                      if (snap.data != null) {
                        return ListView.builder(
                          itemBuilder: (context, index) => BookTilecard(
                            //contructorparameters pasind as indexfor dataamodel index
                            createdbookcard: snap.data![index],
                            //void callback for edit  and  navigate
                            tapforedit: () async {
                              await Navigator.push(
                                  context,
                                  //ush to class with para snap value of  index
                                  MaterialPageRoute(
                                      builder: (context) => AddBookScreen(
                                            bookdetailsdatamodel:
                                                snap.data![index],
                                          )));
                              setState(() {});
                            },
                            //for delete alert message as parameter
                            longpressfordelete: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text(
                                          'Are you sure you want to delete this note?'),
                                      actions: [
                                        //actions 1 yes
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red)),
                                          onPressed: () async {
                                            //service called for delete
                                            await MyDatabaseHelperServ
                                                .deleteBook(snap.data![index]);
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: const Text('Yes'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('No'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                          //snaps data list legtn and build card
                          itemCount: snap.data!.length,
                        );
                      } else {
                        return const Center(
                          child: Text('No Books '),
                        );
                      }
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          )),
    );
  }

  void searchbook(String query) {}
}
