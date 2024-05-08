import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DraggableScrollableSheetView extends StatefulWidget {
  const DraggableScrollableSheetView({super.key});

   @override
  State<DraggableScrollableSheetView> createState() => _DraggableScrollableSheetState();
}

class _DraggableScrollableSheetState extends State<DraggableScrollableSheetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("隐藏与显示，抽屉效果"),
          centerTitle: true,
          leading: null,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close))
          ],
        ),
        body: Column(children: [
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.25,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.red,
                  child: Text("抽屉效果"),
                  // child: ListView(
                  //   controller: scrollController,
                  //   children: [

                  //     ListTile(title: Text("DraggableScrollableSheet")),
                  //     ListTile(title: Text("DraggableScrollableSheet")),
                  
                  //   ],
                  // ),
                );
              })
        ]));
  }
}
