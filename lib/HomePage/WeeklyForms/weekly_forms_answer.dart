import 'package:flutter/material.dart';
import 'package:lunan/MenuList/menulist.dart';

class WeeklyFormsAnswer extends StatelessWidget {
  const WeeklyFormsAnswer({super.key});

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

    );
  }
}