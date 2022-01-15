
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EvaluationIteam extends StatelessWidget{
  Icon evIcon;
  String evname;
  EvaluationIteam(this.evIcon,this.evname);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            child: evIcon,
            backgroundColor: Colors.white,
            radius:30,
          ),
          SizedBox(height: 10,),
          Text(evname),
        ],
      ),
    );
  }

}