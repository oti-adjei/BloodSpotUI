// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:share_plus/share_plus.dart';

import 'package:url_launcher/url_launcher.dart';

class MyCard extends StatelessWidget {
  final int age;
  final String name;
  final day;
  final double distance;
  final String url;
  final String urlshare;
  final String gender;
  final String mainText;
  const MyCard(
      {Key? key,
      required this.age,
      required this.name,
      required this.day,
      required this.distance,
      required this.url,
      required this.gender,
      required this.mainText,
      required this.urlshare})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        child: Container(
            margin: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(100, 220, 220, 220),
                      spreadRadius: 2)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    fit: BoxFit.fill,
                                    'assets/images/blood_donation.jpeg',
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 7,
                              child: Container(
                                decoration: const BoxDecoration(
                                    //color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 10, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Text("$day",
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.grey)),
                                            ),

                                            const Padding(
                                              padding: EdgeInsets.only(top: 5),
                                            ),
                                            //Welcome Row
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Hi Jared!
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(mainText,
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          200,
                                                                          79,
                                                                          78,
                                                                          78))),
                                                      const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5)),
                                                    ],
                                                  ),
                                                  //blood logo
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5.0),
                                                    child: Container(
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        radius: 30,
                                                        backgroundImage: AssetImage(
                                                            "assets/images/blood_drop.png"),
                                                      ),
                                                    ),
                                                  ),
                                                ]), // Row),,
                                            const Padding(
                                              padding: EdgeInsets.only(top: 15),
                                            ),
                                            //Donate Row
                                            Row(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5.0),
                                                    ),
                                                    color: Color.fromARGB(
                                                        199, 226, 225, 225),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      gender,
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              114,
                                                              114,
                                                              114)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.175,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5.0),
                                                    ),
                                                    color: Color.fromARGB(
                                                        199, 226, 225, 225),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Age: $age",
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              114,
                                                              114,
                                                              114)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.175,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5.0),
                                                    ),
                                                    color: Color.fromARGB(
                                                        199, 226, 225, 225),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "$distance km",
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              114,
                                                              114,
                                                              114)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            //Hi Jared row
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 20),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              //color: Colors.green,
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.location_on,
                                                      color: Colors.grey),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: InkWell(
                                                      onTap: () {
                                                        linkto(url);
                                                      },
                                                      child: const Text(
                                                          "Click here for Location",
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .blueAccent)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(20.0),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        child: Column(
                                          children: [
                                            const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 5)),
                                            const MySeparator(),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          //profile logo
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 15),
                                                            child: CircleAvatar(
                                                              radius: 25,
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50.0),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/1.jpg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),

                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 5),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                const Text(
                                                                    "Posted by",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            114,
                                                                            114,
                                                                            114))),
                                                                Text(name,
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            42,
                                                                            41,
                                                                            41))),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 10.0),
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .05,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .25,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            color: Colors.white,
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      23,
                                                                      182,
                                                                      144),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: const [
                                                                Icon(
                                                                  Icons.check,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                  'Settings',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      Positioned(
                        right: 23,
                        top: 170,
                        child: Container(
                          decoration: const BoxDecoration(
                            // color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Color.fromARGB(255, 205, 205, 205),
                                  spreadRadius: 1)
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              _shareContent(urlshare);
                            },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Center(
                                  child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: const Icon(Icons.reply_sharp,
                                    color: Colors.grey),
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}

Future _shareContent(urlshare) async {
  await Share.share("Share this text\n$urlshare",
      subject: "Share this subject");
}

Future linkto(String url) async {
  //const url = 'https://blog.logrocket.com';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launch(url, forceWebView: true); //forceWebView is true now
  } else {
    throw 'Could not launch $url';
  }
}

//Class for dotted lines
class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: const DecoratedBox(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 208, 208, 208)),
              ),
            );
          }),
        );
      },
    );
  }
}
