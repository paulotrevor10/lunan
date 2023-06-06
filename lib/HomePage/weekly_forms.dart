import 'package:flutter/material.dart';
import 'package:lunan/MenuList/menulist.dart';

class WeeklyForms extends StatelessWidget {
  const WeeklyForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
    backgroundColor: const Color(0xffF5E9CF), // Set the background color
      appBar: AppBar(
      
      automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff7DB9B6),
      
        
      
      ),
      
      endDrawer: Drawer(
        child: MenuList(),
      ),
    
    );
  }
}