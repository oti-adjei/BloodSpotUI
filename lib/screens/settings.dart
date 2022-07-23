// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void EditDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "No course material found for this programme and year."),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"),
                  ),
                ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBAr
        appBar: AppBar(
          elevation: 0.5,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                // Display the edit dialog
                EditDialog();
              },
            )
          ],
          backgroundColor: Colors.white,
          title: const Text(
            "Settings",
            style: TextStyle(color: Colors.black),
          ),
        ),
        //Body
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 3, // 20%
              child: Container(
                //color: Colors.green,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 5,
                                color: Color.fromARGB(255, 205, 205, 205),
                                spreadRadius: 4)
                          ],
                        ),
                        margin: const EdgeInsets.only(top: 20),
                        //color: Colors.indigo,
                        child: const Center(
                            child: SizedBox(
                          height: 115,
                          width: 115,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/1.jpg"),
                          ),
                        )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        //color: Colors.red,
                        child: Center(
                          child: Text("Andries Grootnoook",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10, // 60%
              child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      //GENDER AND BLOOD GROUP
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.yellow,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),

                          //Gender and Bloodgroup
                          child: Row(
                            //mainAxisSize: MainAxisSize.max,
                            children: [
                              //Gender
                              Expanded(
                                child: Container(
                                  //color: Colors.black,
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      //Icon
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          //color: Colors.tealAccent,
                                          padding: const EdgeInsets.all(10),
                                          child: const Center(
                                            child: Icon(
                                              Icons.male_rounded,
                                              size: 40,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //Gender Text
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          //color: Colors.pink,
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("Gender"),
                                              Text("Male")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                  thickness: 3, color: Colors.grey.shade300),
                              //Bloddgroup
                              Expanded(
                                child: Container(
                                  //color: Colors.blue,
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          //color: Colors.tealAccent,
                                          padding: const EdgeInsets.all(10),
                                          child: const Center(
                                            child: Icon(
                                              Icons.male_rounded,
                                              size: 40,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          //color: Colors.pink,
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("Blood Group"),
                                              Text("A+(Positive)")
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //DATE OF BIRTH
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.orange,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                    child: Icon(
                                      Icons.calendar_today,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: Container(
                                  //color: Colors.pink,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Date of Birth"),
                                      Text("05-June-1997")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //EMAIL
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                    child: Icon(
                                      Icons.mail_outline_rounded,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: Container(
                                  //color: Colors.pink,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Date of Birth"),
                                      Text("05-June-1997")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //CALL NUMBER
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                    child: Icon(
                                      Icons.call_rounded,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: Container(
                                  //color: Colors.pink,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Date of Birth"),
                                      Text("05-June-1997")
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            20, 231, 39, 39),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      //padding: EdgeInsets.only(right: 10.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      width: MediaQuery.of(context).size.width *
                                          .25,
                                      child: const Center(
                                        child: Text(
                                          'CHANGE',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //HEIGHT
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                      child: Icon(Icons.rule_rounded)),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  //color: Colors.pink,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Height"),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                    child: Text(
                                      "176 cm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //WEIGHT
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                              bottom: BorderSide(
                                  width: 1.0, color: Colors.grey.shade300),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(10),
                                  child: const Center(
                                    child: Icon(Icons.monitor_weight_outlined),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  //color: Colors.pink,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Weight"),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  //color: Colors.tealAccent,
                                  padding: const EdgeInsets.all(5),
                                  child: const Center(
                                    child: Text(
                                      "66kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        )));
  }
}
