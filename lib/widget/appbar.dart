import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  final String userName;
  final String userImage;
  const Customappbar(
      {Key? key, required this.userName, required this.userImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // Hi Jared!
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Welcome",
                    style: TextStyle(fontSize: 25, color: Colors.white)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Hello $userName",
                  style: const TextStyle(
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
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child:
                        //Image.network(userImage.toString(), fit: BoxFit.cover),
                        Image.asset('assets/images/1.jpg'),
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
        ]));
  }
}
