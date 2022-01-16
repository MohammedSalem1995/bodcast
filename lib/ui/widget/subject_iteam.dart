import 'package:flutter/cupertino.dart';
import 'package:todo_ui/modules/subject_module.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SubjectItem extends StatelessWidget{
  final Subject subject;
  SubjectItem(this.subject);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 10.h,top: 10.h),
      child: Row(
        children: [
          Container(
            height: 70.h,
            width: 70.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.h)),
            child: subject.image,
          ),
          SizedBox(width: 30.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subject.title,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.h,),
              Text(subject.writer.name,style: TextStyle(fontSize: 16.sp,),),
            ],
          ),
        ],
      ),
    );
  }

}