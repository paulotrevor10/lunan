import 'package:flutter/material.dart';
import 'package:lunan/Therapist/HomePage/dashboard.dart';

class DashboardModal extends StatelessWidget {
  const DashboardModal();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: _showDialog(context),
      builder: (context, snapshot) => Scaffold(
        backgroundColor: const Color(0xffF5E9CF), // Set the background color
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff7DB9B6),
          
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              color: const Color(0xff7DB9B6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                  child: const Text(
                    'Welcome back user!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
