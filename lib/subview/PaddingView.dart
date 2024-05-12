

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class PaddingView extends StatefulWidget {
  const PaddingView({super.key});

  @override
  State<PaddingView> createState() => _PaddingViewState();
}

class _PaddingViewState extends State<PaddingView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Padding'),
                centerTitle: true,
                leading: null,

              ),
              body:  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
 
                    ),
                  ),


Container(
   color: Colors.blue, // 设置背景颜色为蓝色
  padding: EdgeInsets.all(16.0),
  child: Text('Hello, Flutter!'),
),
Container(
  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
  decoration: BoxDecoration(
    color: Colors.blue, // 设置 Padding 的背景颜色为蓝色
    borderRadius: BorderRadius.circular(8.0), // 可选，添加圆角边框
  ),

  child: Text('Hello, Flutter!'),
)




                ]
 )
  )

    );
  }
}