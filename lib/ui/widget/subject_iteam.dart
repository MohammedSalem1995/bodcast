import 'package:flutter/cupertino.dart';
import 'package:todo_ui/modules/subject_module.dart';

class SubjectItem extends StatelessWidget{
  final Subject subject;
  SubjectItem(this.subject);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 10,top: 10),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: subject.image,
          ),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subject.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(subject.writer.name),
            ],
          ),
        ],
      ),
    );
  }

}