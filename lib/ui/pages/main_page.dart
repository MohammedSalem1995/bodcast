import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/dumy_data/subjects.dart';
import 'package:todo_ui/dumy_data/writers.dart';
import 'package:todo_ui/modules/evaluate_module.dart';
import 'package:todo_ui/ui/pages/main_page.dart';
import 'package:todo_ui/ui/pages/subject_page.dart';
import 'package:todo_ui/ui/widget/evaluation_iteam.dart';
import 'package:todo_ui/ui/widget/subject_iteam.dart';
import 'package:todo_ui/ui/widget/writer_iteam.dart';




class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children:[
        Container(
          child: Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,),
          width: 360,
          height:592,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.list),
          ),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30,),
                  Text(
                    "Browse",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.transparent,
                        decorationColor: Colors.transparent,
                        fontSize: 40,
                        fontWeight: FontWeight.w900
                    ),

                  ),
                  SizedBox(height: 5,),
                  Text("find podcast that suit to your interest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin:EdgeInsets.only(right: 20,left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 5),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: ' type keyword',
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10, color: Colors.red),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: evaluates.map((e) {
                      return EvaluationIteam(e.evaluate_icon,e.evaluate_name,Colors.white);
                    }).toList(),
                  ),

                ],
              ),
              SizedBox.expand(
                child: DraggableScrollableSheet(
                  maxChildSize: 1,
                  minChildSize: 0.03,
                  initialChildSize: 0.3,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Container(
                            // clipBehavior: Clip.antiAlias, //clip the child that over the cover
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(40),

                              color: Colors.teal.shade200,
                            ),
                            width:10,
                            height: 10,
                            margin:   EdgeInsets.only(right: 130,left: 130),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            clipBehavior: Clip.antiAlias, //clip the child that over the cover
                            decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),),
                            child: Container(
                              color: Colors.white,
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30,),
                                    Text("Handpicked",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      // clipBehavior: Clip.antiAlias, //clip the child that over the cover
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.orangeAccent,
                                      ),
                                      width:50,
                                      height: 5,
                                      //   margin:   EdgeInsets.only(right: 10,left: 130),
                                    ),
                                    SizedBox(height: 20,),

                                    Column(
                                      children: subjects.map((e) {
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context){
                                                  return SubjectPage(e);
                                                },
                                              ),
                                            );
                                          },
                                            child: SubjectItem(e));
                                      }).toList(),
                                    ),
                                    SizedBox(height: 10,),
                                    Align(
                                      child: Text(
                                        "Top Authors",
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                    SizedBox(height: 10,),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: writers.map((e) {
                                          return WriterItem(e);
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },

                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}