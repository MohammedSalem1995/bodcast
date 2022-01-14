import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('DraggableScrollableSheet'),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          maxChildSize: 1,
          minChildSize: 0.3,

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
    );
  }
}