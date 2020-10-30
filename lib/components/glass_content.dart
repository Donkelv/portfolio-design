import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';


class GlassContent extends StatefulWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _GlassContentState createState() => _GlassContentState();
}

class _GlassContentState extends State<GlassContent> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints: BoxConstraints(maxWidth: 1110, maxHeight: widget.size.height * 0.7),
          color: Colors.white.withOpacity(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              InkWell(
                onTap: (){
                  print(width);
                },
                child: Text("Hello There", style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white, fontFamily: "Rubik"),),
                ),
              Text("Kevin \nOhiro", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 100.0, fontFamily: "Rubik", height: 1.0),),
              Text("Flutter Developer", style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white, fontFamily: "Ibmplexsans",),),
            ]
          ),
        ),
      ),
    );
  }
}