import 'package:flutter/material.dart';

import 'sections/topSection/top_section.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Column(
          children:[
            TopSection()
          ]
        ),
      ),
    );
  }
}