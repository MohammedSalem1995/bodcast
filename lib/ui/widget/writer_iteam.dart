import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/modules/writerModule.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WriterItem extends StatelessWidget{
  final Writer writer;
  WriterItem(this.writer);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 20.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundImage: AssetImage(writer.image) ,
          ),
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(40.h),
          //   ),
          //   width:70.w,
          //   height: 70.h,
          //   child: writer.image,
          // ),
          SizedBox(height: 10.h,),
          Text(writer.name , style: TextStyle(color: Colors.black),),
        ],
      ),
    );
  }

}