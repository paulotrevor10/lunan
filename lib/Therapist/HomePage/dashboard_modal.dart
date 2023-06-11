import 'package:flutter/material.dart';
import 'package:lunan/Therapist/HomePage/dashboard.dart';

class DashboardModalT extends StatelessWidget {
  const DashboardModalT();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
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
      floatingActionButton: Container(
        height: 50,
        width: 50,
         margin: const EdgeInsets.fromLTRB(0, 0, 150, 100),
        decoration: BoxDecoration(
          color: const Color(0xff7DB9B6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const DashboardT()),
            );
          },
          child: const Text(
            'Ok',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
