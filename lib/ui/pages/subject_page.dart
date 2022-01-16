import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/modules/evaluate_module.dart';
import 'package:todo_ui/modules/subject_module.dart';
import 'package:todo_ui/ui/widget/evaluation_iteam.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectPage extends StatelessWidget{
  final Subject subject;
  SubjectPage(this.subject);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200.h,width: 360.w,
                child: subject.image,
              ),
              Column(
                children: [
                  SizedBox(height: 20.h,),
                  IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_outlined,size: 30.r,color: Colors.white,
                      ),
                  ),

                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
            child:Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: Text(subject.title,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                    Icon(Icons.play_circle_fill,size: 50.r,color: Colors.orangeAccent,),

                  ],
                ),
                SizedBox(height: 10.h,),
                Text(
                  subject.subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20.h,),
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 70.r,
                        backgroundImage: AssetImage(subject.writer.image) ,
                      ),
                      // Container(
                      //   clipBehavior: Clip.antiAlias,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(40.r),
                      //   ),
                      //   width:70.w,
                      //   height: 70.h,
                      //   child: subject.writer.image,
                      // ),
                      SizedBox(width:20.w ,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(subject.writer.name,style:TextStyle(fontWeight: FontWeight.bold) ,),
                          Text("${subject.writer.followers} follwer")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: evaluates.map((e) {
                    if(e.evaluate_name!="Magic"){
                      return EvaluationIteam(e.evaluate_icon,e.evaluate_name,Colors.black);
                    }
                    return null;
                  }).where((e) => e != null).toList(),
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }

}