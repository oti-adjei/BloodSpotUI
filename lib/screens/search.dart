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
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.pink,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                      //color: Colors.teal,
                      //child:
                      // TextField(
                      //   decoration: InputDecoration(
                      //     hintText: 'Enter Something',
                      //     focusColor: Colors.green,
                      //   ),
                      // ),
                      ),
                ],
              ),
            ],
          ),
        ));
  }
}

//  Expanded(
//           child: Container(
//             color: Colors.black,
//             child: Column(
//               children: [
//                 Card(
//                     child: SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.35,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                         ))),
//                 Row(
//                   children: [
//                     Card(
//                       child: Row(
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: const [
//                               Text(
//                                 "Ride",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [CircleAvatar()],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Card(
//                       child: Row(
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: const [
//                               Text(
//                                 "Package",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [CircleAvatar()],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Color.fromARGB(255, 255, 169, 143),
//                         Color.fromARGB(255, 212, 46, 0)
//                       ],
//                     ),
//                   ),
//                   height: 50,
//                   child: Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {},
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Where to',
//                           hintStyle: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
