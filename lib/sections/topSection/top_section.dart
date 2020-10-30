import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/components/glass_content.dart';
import 'package:web_app/constants.dart';



class TopSection  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 680, minHeight: 400),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage("assets/background.png"),
        )
      ),
      child: Container(
        margin: EdgeInsets.only(top: 100.0),
        width: size.width * 0.7,
        child: Stack(
          children: [
            BlurBox(size: size),
            Menu(size: size),
            ],
          )
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItem = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact",
  ];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        //padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.0),
        height: 80.0,
        width: widget.size.width * 0.7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0)
          )

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(menuItem.length, (index) => buildMenuItem(index, widget.size),),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index, Size size) => Container(
    constraints: BoxConstraints(minWidth: 150),
    height: 100.0,
    //width: size.width * 0.5,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Text(menuItem[index], style: TextStyle(fontSize: 24.0, color: kTextColor, fontFamily: "Ibmplexsans", ),),],),
    );
}

class BlurBox extends StatelessWidget {
  const BlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        GlassContent(size: size),
      ]
    );
  }
}

