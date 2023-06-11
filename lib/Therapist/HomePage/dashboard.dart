import 'package:flutter/material.dart';
import 'package:lunan/Patient/HomePage/Assignment/assignment.dart';
import 'package:lunan/Patient/HomePage/WeeklyForms/weekly_forms.dart';
import 'package:lunan/Patient/HomePage/WellnessForms/wellness_form.dart';
import 'package:lunan/Patient/HomePage/wellness_guide.dart';
import 'package:lunan/Therapist/MenuList/menulist.dart';
import 'package:lunan/Therapist/HomePage/chat.dart';


class DashboardT extends StatelessWidget {
  const DashboardT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff7DB9B6),
      ),
      // Add the drawer for the menu
      endDrawer: Drawer(
        child: MenuListT(),
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
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WeeklyForms()),
                      );
                    
                    },
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
                          child: const Text(
                            'View\nPatients',
                            textAlign: TextAlign.center,
                            ),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WellnessForms()),
                      );
                     
                    },
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
                          child: const Text(
                            'View Patient Assignments',
                            textAlign: TextAlign.center,
                            ),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Assignment()),
                      );
                    
                    },
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
                          child: const Text(
                            'Patient Weekly\nForms',
                            textAlign: TextAlign.center,
                            ),
                            
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
                    onPressed: () {
                    
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WellnessGuide()),
                      );
                    },
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
                          child: const Text(
                            'Patient Wellness Forms',
                            textAlign: TextAlign.center,
                          ),
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
      )),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7DB9B6),
        
           onPressed: () {
                    
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  chatT()),
                      );
                    },
        child: const Icon(Icons.messenger),
      ),
    );
  }
}
