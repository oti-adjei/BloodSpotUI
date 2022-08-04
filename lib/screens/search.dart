import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.green,
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Find Donor Text
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 20),
            child: Text(
              "Find Donor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          //Search for Blood Donors Text
          Container(
            child: Text(
              'Search for Blood Donors around You',
            ),
          ),
          //Choose blood group Text
          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   child: Text(
          //     'Choose Blood Group',
          //   ),
          // ),
          // Padding(padding: EdgeInsets.only(top: 15)),
          // //First tab for blood group
          // Card(
          //   elevation: 20,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     height: MediaQuery.of(context).size.height * 0.06,
          //     child: Row(
          //       children: [
          //         Flexible(
          //             child: Container(
          //           color: Colors.white,
          //           child: Center(
          //             child: Text(
          //               "A+",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.grey,
          //           child: Center(
          //             child: Text(
          //               "A-",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.pink,
          //           child: Center(
          //             child: Text(
          //               "B-",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.indigo,
          //           child: Center(
          //             child: Text(
          //               "O+",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.orange,
          //           child: Center(
          //             child: Text(
          //               "O-",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.brown,
          //           child: Center(
          //             child: Text(
          //               "AB+",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         ))
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(padding: EdgeInsets.only(top: 20)),
          // //Second tab for blood group
          // Card(
          //   elevation: 20,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     height: MediaQuery.of(context).size.height * 0.06,
          //     child: Row(
          //       children: [
          //         Flexible(
          //             child: Container(
          //           color: Colors.white,
          //           child: Center(
          //             child: Text(
          //               "B+",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.grey,
          //           child: Center(
          //             child: Text(
          //               "AB-",
          //               style: TextStyle(color: Colors.black),
          //             ),
          //           ),
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.pink,
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.indigo,
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.orange,
          //         )),
          //         Flexible(
          //             child: Container(
          //           color: Colors.brown,
          //         ))
          //       ],
          //     ),
          //   ),
          // ),
          Padding(padding: EdgeInsets.only(top: 20)),
          //Find Location Text
          Container(
            child: Text(
              "Find Location",
              style: TextStyle(),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          //Input Section

          Card(
            color: Colors.transparent,
            elevation: 20,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height * 0.07,
              child: Row(
                children: const [
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Current Location",
                      border: InputBorder.none,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.only(left: 20),
              height: MediaQuery.of(context).size.height * 0.07,
              child: Row(
                children: const [
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Choose Your Hospital Location",
                      border: InputBorder.none,
                    ),
                  ))
                ],
              ),
            ),
          ),

          //Search Button
          // InkWell(
          //   onTap: () => "Null",
          //   child: Container(
          //     color: Colors.red,
          //     height: MediaQuery.of(context).size.height * 0.07,
          //     child: Center(
          //       child: Text(
          //         "Search Nearby",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    )));
  }
}
