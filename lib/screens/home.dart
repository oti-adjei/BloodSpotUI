import 'package:flutter/material.dart';
import '../widget/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 224, 78, 76), Colors.white])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Hi Jared!
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Welcome",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                'Hello Jared Prishska Albert!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          //profile logo
                          Stack(
                            children: [
                              Container(
                                height: 60,
                                // padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: ClipRRect(
                                  child: Image.asset('assets/1.jpg'),
                                  borderRadius: const BorderRadius.only(
                                    topRight: const Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    bottomRight: const Radius.circular(15),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                      // borderRadius: BorderRadius.all(
                                      //   Radius.circular(10),
                                      // ),
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ]), // Row),,
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                  ])),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(80, 192, 192, 192),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height * 0.04,
                child: const Center(
                  child: Text("Swipe Right to See Next",
                      style: TextStyle(color: Colors.white70)),
                ),
              ),
              Expanded(
                  flex: 9,
                  child: Container(
                    //color: Colors.white,
                    child: PageView(
                      controller: PageController(
                        viewportFraction: 0.85,
                        initialPage: 0,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        MyCard(),
                        MyCard(),
                        MyCard(),
                        MyCard(),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                      //color: Colors.black
                      )),
            ],
          ))),
    );
  }
}
