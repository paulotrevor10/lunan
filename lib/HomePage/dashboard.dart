import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5E9CF), // Set the background color
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff7DB9B6),
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle menu button press
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 70, 20, 20),
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7DB9B6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the corner radius here
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: const Text('Weekly Forms'),
                          ),
                          Image.asset('assets/iconEdit.png'),
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 70, 20, 20),
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7DB9B6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the corner radius here
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: const Text('Wellness Forms'),
                          ),
                          Image.asset('assets/iconEdit2.png'),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7DB9B6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the corner radius here
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: const Text('Assignments'),
                          ),
                          Image.asset('assets/iconTaskSquare.png'),
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7DB9B6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the corner radius here
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: const Text('Wellness Guide'),
                          ),
                          Image.asset('assets/iconBookSaved.png'),
                        ],
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7DB9B6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Set the corner radius here
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: const Text('Schedule'),
                          ),
                          Image.asset('assets/iconCalendar.png'),
                        ],
                      )),
                )
              ],
            )
          ]),
        )));
  }
}
