import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
https://www.bilibili.com/video/BV1ut421t7UA/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772



https://www.bilibili.com/video/BV1ut421t7UA/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772


 */
class ExpandedView extends StatefulWidget {
  const ExpandedView({super.key});

  @override
  State<ExpandedView> createState() => _ExpandedViewState();
}

class _ExpandedViewState extends State<ExpandedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded "),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("-------------------FloatingActionButton------Icons------");
        },
        child: Icon(Icons.add),
      ),
      body: Row(
        children: [

          Expanded(  flex: 2, child:       Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
            child: Text("1"),
          ), ),
    
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(20),
            child: Text("2"),
          ),

          Expanded(flex: 1,  child: Container(
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: Text("3"),
          ),),
    
        ],
      ),




      
    );
  }
}
