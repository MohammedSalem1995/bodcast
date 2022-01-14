import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: 70,),
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
                SizedBox(height: 10,),
                Text("find podcast that suit to your interest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),

                ),
                SizedBox(height: 15,),
                Container(
                  margin:EdgeInsets.only(right: 20,left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 5),
                        fillColor: Colors.transparent,
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
                  // children: evaluate.map((e) {
                  //   return EvaluationIteam(e);
                  // }).toList(),
                  children: [

                  ],
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
                    clipBehavior: Clip.antiAlias, //clip the child that over the cover
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    //  color: Colors.blue[100],
                    child: Container(
                      color: Colors.blue[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
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