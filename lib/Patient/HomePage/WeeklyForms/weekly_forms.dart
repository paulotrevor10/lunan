import 'package:flutter/material.dart';
import 'package:lunan/Patient/HomePage/WeeklyForms/weekly_forms_answer.dart';
import 'package:lunan/Patient/MenuList/menulist.dart';

class WeeklyForms extends StatelessWidget {
  const WeeklyForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
       
        backgroundColor: const Color(0xff7DB9B6),
      ),

      endDrawer: Drawer(
        child: MenuList(),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: const Text(
                'View Weekly Forms',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  color: Color(0xff4D455D),
                ),
              ),
            ),
            const Divider(
              color: Color(0xff4D455D), // Customize the color of the line
              thickness: 2, // Adjust the thickness of the line
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                     builder: (context) => const WeeklyFormsAnswer()
                    ),
                );
              
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xff4D455D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Wellness Form # 1 \nDate Submitted :',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
