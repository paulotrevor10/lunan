import 'package:flutter/material.dart';
import 'package:lunan/Patient/MenuList/menulist.dart';

class WellnessFormQuestion extends StatefulWidget {
  WellnessFormQuestion({super.key});

  @override
  State<WellnessFormQuestion> createState() => _WellnessFormQuestion();
}

class _WellnessFormQuestion extends State<WellnessFormQuestion> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E9CF),
      appBar: AppBar(
        backgroundColor: const Color(0xff7DB9B6),
      ),
      endDrawer: Drawer(
        child: MenuList(),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: const Text(
                'Wellness Question Forms',
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
            Form(
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                child: const Text(
                                  'Series of Question',
                                  style: TextStyle(
                                      color: Color(0xff4D455D), fontSize: 24),
                                ),
                              )),
                          RadioListTile<int>(
                            value: 1,
                            groupValue: selectedValue,
                            title: const Text('Option 1'),
                            onChanged: (value) =>
                                setState(() => selectedValue = 1),
                          ),
                          RadioListTile<int>(
                            value: 2,
                            groupValue: selectedValue,
                            title: const Text('Option 2'),
                            onChanged: (value) =>
                                setState(() => selectedValue = 2),
                          ),
                          RadioListTile<int>(
                            value: 3,
                            groupValue: selectedValue,
                            title: const Text('Option 3'),
                            onChanged: (value) =>
                                setState(() => selectedValue = 3),
                          ),
                          RadioListTile<int>(
                            value: 4,
                            groupValue: selectedValue,
                            title: const Text('Option 4'),
                            onChanged: (value) =>
                                setState(() => selectedValue = 4),
                          ),
                        ],
                      ))
                ],
            ))
          ],
        ),
      ),
      
      )
    );
  }
}
