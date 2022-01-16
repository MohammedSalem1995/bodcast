
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EvaluationIteam extends StatelessWidget{
  Icon evIcon;
  String evname;
  Color c;
  EvaluationIteam(this.evIcon,this.evname,this.c);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            child: evIcon,
            backgroundColor: Colors.white,
            radius:30.r,
          ),
          SizedBox(height: 10.h,),
          Text(evname , style: TextStyle(color: c),),
        ],
      ),
    );
  }

}