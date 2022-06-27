import 'package:bookcard/ui/bookcard.dart';
import 'package:flutter/material.dart';

class AddBookScreen extends StatelessWidget {
  //nullable bookmodel created that is single row for add and update
  final BookDataModel? bookdetailsdatamodel;
  //contructor created
  const AddBookScreen({Key? key, this.bookdetailsdatamodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //created controller object and linked with db
    final editpagetitleController = TextEditingController();
    final editingpageauthorcontroller = TextEditingController();
    // final editingpagecategorycontroller = TextEditingController();
    final editingpagepricecontroller = TextEditingController();
    //incase of update showing previous data
    if (bookdetailsdatamodel != null) {
      //check this page controller data  is currently null or not
      //linking text controller value from datamodel
      editpagetitleController.text = bookdetailsdatamodel!.bookmodeltitle;
      editingpageauthorcontroller.text = bookdetailsdatamodel!.bookmodelauthor;
      // editingpagecategorycontroller.text =
      // bookdetailsdatamodel!.bookmodelcategory;
      //controller always takes and  send s data as string

      editingpagepricecontroller.text =
          bookdetailsdatamodel!.bookmodelprice.toString();
    }

    return Scaffold(
      appBar: AppBar(
        //terninary opration for condition for title name if true and false resp
        title: Text(bookdetailsdatamodel == null ? 'Add a note' : 'Edit note'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                'Book Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //for title
            TextFormField(
              //contoller named
              controller: editpagetitleController,
              maxLines: 1,
              decoration: const InputDecoration(
                  hintText: 'Book title',
                  labelText: 'Book title',
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Color.fromARGB(255, 182, 15, 15),
                      //   width: 0.75,
                      // ),
                      borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),
            //for author
            TextFormField(
              controller: editingpageauthorcontroller,
              decoration: const InputDecoration(
                  hintText: 'Author',
                  labelText: 'author',
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.white,
                      //   width: 0.75,
                      // ),
                      borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ))),
              keyboardType: TextInputType.multiline,
              // onChanged: (str) {},
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            //category
            // TextFormField(
            //   //contoller named
            //   controller: editingpagecategorycontroller,
            //   maxLines: 1,
            //   decoration: const InputDecoration(
            //       hintText: 'catergory',
            //       labelText: 'category',
            //       border: OutlineInputBorder(
            //           // borderSide: BorderSide(
            //           //   color: Color.fromARGB(255, 182, 15, 15),
            //           //   width: 0.75,
            //           // ),
            //           borderRadius: BorderRadius.all(
            //         Radius.circular(10.0),
            //       ))),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            //for price
            TextField(
              controller: editingpagepricecontroller,
              decoration: const InputDecoration(
                  hintText: 'Price',
                  labelText: 'Price',
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.white,
                      //   width: 0.75,
                      // ),
                      borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ))),
              keyboardType: TextInputType.multiline,
              // onChanged: (str) {},
              maxLines: 1,
            ),
            //create space with mediaquery to put the below items in bottom
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () async {
                      //setiing final var to check set and send if  filled
                      final submittimetitle =
                          editpagetitleController.value.text;
                      final submitimeauthor =
                          editingpageauthorcontroller.value.text;

                      final submittimeprice =
                          editingpagepricecontroller.value.text;

                      if (submittimetitle.isEmpty ||
                          submitimeauthor.isEmpty ||
                          submittimeprice.isEmpty) {
                        return;
                      }

                      final BookDataModel model = BookDataModel(
                          bookmodeltitle: submittimetitle,
                          bookmodelauthor: submitimeauthor,
                          // bookmodelcategory: submittimecategory,
                          bookmodelprice: double.parse(submittimeprice),
                          bookmodelid: bookdetailsdatamodel?.bookmodelid);
                      //if this page controllersis nul at start add then update
                      if (bookdetailsdatamodel == null) {
                        await MyDatabaseHelperServ.myaddBookFunc(model);
                      } else {
                        await MyDatabaseHelperServ.updateBook(model);
                      }

                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.75,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )))),
                    child: Text(
                      bookdetailsdatamodel == null ? 'Save' : 'Edit',
                      style: const TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
