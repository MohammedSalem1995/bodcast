import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/modules/writerModule.dart';

class WriterItem extends StatelessWidget{
  Writer writer;
  WriterItem(this.writer);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            width:70,
            height: 70,
            child: writer.image,
          ),
          SizedBox(height: 10,),
          Text(writer.name , style: TextStyle(color: Colors.black),),
        ],
      ),
    );
  }

}