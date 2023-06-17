import 'package:flutter/material.dart';
import 'package:lunan/Therapist/HomePage/ViewPatient/create_casenotes.dart';
import 'package:lunan/Therapist/HomePage/ViewPatient/patient_casenotes.dart';
import 'package:lunan/Therapist/HomePage/ViewPatient/patient_list.dart';
import 'package:lunan/Therapist/MenuList/menulist.dart';
import 'package:lunan/Therapist/HomePage/ViewPatient/view_casenotes.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
        backgroundColor: const Color(0xff7DB9B6),
      ),

      endDrawer: Drawer(
        child: MenuListT(),
      ),

      body: Center(
          child: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff7DB9B6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            'Patient Info',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ))),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff4D455D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Patient A \nDate Added \nLast Session ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffF5E9CF),
                                ),
                              ),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text(
                            'Diagnosis: ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffF5E9CF),
                            ),
                          ),
                        )),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          margin: const EdgeInsets.fromLTRB(10, 40, 5, 0),
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PatientList()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 211, 34, 87),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the corner radius here
                                ),
                              ),
                              child: const Text(
                                'Back', style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffF5E9CF),
                            ),
                              )),
                        ),
                         Container(
                          width: 100,
                          margin: const EdgeInsets.fromLTRB(5, 40, 5, 0),
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PatientCaseNotes()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff7DB9B6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the corner radius here
                                ),
                              ),
                              child: const Text(
                                'View Case\nNotes', textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffF5E9CF),
                            ),
                              )),
                        ),
                         Container(
                          width: 100,
                          margin: const EdgeInsets.fromLTRB(5, 40, 5, 0),
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateCaseNotes()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 19, 195, 122),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Set the corner radius here
                                ),
                              ),
                              child: const Text(
                                'Create Case\nNotes', textAlign: TextAlign.center, style: TextStyle( 
                              fontSize: 12,
                              color: Color(0xffF5E9CF),
                            ),
                              )),
                        ),
                      ],
                    )
                  ]),
                )),
              ],
            )),
      )),
    );
  }
}
