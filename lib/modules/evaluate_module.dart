import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EvaluateModule{
  String evaluate_name;
  Icon evaluate_icon;
  EvaluateModule(this.evaluate_name,this.evaluate_icon);
}
 List<EvaluateModule> evaluates=[
   EvaluateModule("Popular",Icon(Icons.star_border_purple500_sharp , color: Colors.amber,size:35,),),
   EvaluateModule("trending",Icon(Icons.trending_up_rounded , color: Colors.amber,size:35,),),
   EvaluateModule("Recent",Icon(Icons.watch_later_rounded , color: Colors.amber,size:35,),),
   EvaluateModule("Magic",Icon(Icons.bolt , color: Colors.amber,size:35,),),

];