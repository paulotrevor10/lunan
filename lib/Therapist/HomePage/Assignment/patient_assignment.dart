import 'package:flutter/material.dart';
import 'package:lunan/Therapist/MenuList/menulist.dart';

class AssignmentT extends StatelessWidget {
  const AssignmentT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff7DB9B6),
      ),
      endDrawer: Drawer(
        child: MenuListT(),
      ),
      body: Center(
        child: SingleChildScrollView(
        
          child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: const Text(
                'Turned-in\nAssignments',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  color: Color(0xff4D455D),
                ),
              ),
            ),
            Container(
              width: 370,
              height: 600,
              decoration: BoxDecoration(
                color: const Color(0xff4D455D),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle "Turned In" button press
                        },
                        child: const Text('Turned In'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff4D455D),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle "Verified" button press
                        },
                        child: const Text('Verified'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff4D455D),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 330,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: Text('Patient Name:\nDate Given:\nHW Name:'),
                  ),
                   Container(
                    width: 330,
                    height: 80,
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                       padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Text('Patient Name:\nDate Given:\nHW Name:'),
                  ),
                   Container(
                    width: 330,
                    height: 80,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                      padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Text('Patient Name:\nDate Given:\nHW Name:'),

                  ),
                ],
              ),
            ),
          ],
        ),
        )
      ),
    );
  }
}
