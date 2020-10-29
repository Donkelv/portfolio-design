import 'dart:ui';

import 'package:flutter/material.dart';



class TopSection  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 700, minHeight: 500),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage("assets/background.png"),
        )
      ),
      child: Container(
        margin: EdgeInsets.only(top: 100.0),
        width: 1200.0,
        child: Column(
          children:[
            GlassContent(size: size)
          ]
        )
      ),
    );
  }
}

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          
          constraints: BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          color: Colors.white.withOpacity(0),
          child: Column(
            children:[
              Text("Hello There", style: TextStyle())
            ]
          ),
        ),
      ),
    );
  }
}