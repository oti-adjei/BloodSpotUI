import 'package:flutter/material.dart';
import '../widget/flutter_dash.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(150, 220, 173, 156),
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox.expand(
                  child: Container(
                color: Colors.purple,
              )),
              Positioned(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(
                                Icons.gps_fixed,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(150, 13, 68, 95),
                              ),
                              margin: EdgeInsets.all(15),
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.0, right: 10.0),
                                        child: CircleAvatar(
                                          radius: 30,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Petunjuk Jalan",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          Text("Menutun anda ke jalan",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 205, 205, 205))),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      Icons.telegram,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 50,
                              shadowColor: Colors.black,
                              //color: Colors.greenAccent[100],
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      // USER IMAGE and details side
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 15, left: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //Picture text icon row
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        "assets/images/1.jpg"),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      Text("Domino Alcuano"),
                                                      Text(
                                                          "Update, 23 menit yang lalu")
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.blueAccent,
                                              child: Icon(
                                                Icons.sms_rounded,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //Tracking side
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        child: Row(
                                          children: [
                                            // Destination and WHere from
                                            Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15.0),
                                                      child: Column(
                                                        children: const [
                                                          Icon(
                                                            Icons.location_on,
                                                            size: 20,
                                                            color: Colors.grey,
                                                          ),
                                                          Dash(
                                                              direction:
                                                                  Axis.vertical,
                                                              length: 50,
                                                              dashLength: 15,
                                                              dashColor:
                                                                  Colors.grey),
                                                          Icon(
                                                            Icons
                                                                .receipt_long_rounded,
                                                            size: 20,
                                                            color: Colors.grey,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                              "Posisi Rumah Sakit"),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2)),
                                                          Text(
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .grey),
                                                              "Rumah Wijayakusuma, Jalan \nJalan no, 16 Purwokerto"),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 20)),
                                                          Text(
                                                              "Posisi Rumah Sakit"),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2)),
                                                          Text(
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .grey),
                                                              "Rumah Wijayakusuma, Jalan \nJalan no, 16 Purwokerto")
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () => 'Null',
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 255, 169, 143),
                                                Color.fromARGB(255, 212, 46, 0)
                                              ],
                                            ),
                                          ),
                                          height: 50,
                                          width: double.infinity,
                                          child: const Center(
                                            child: Text(
                                              'Visit',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
