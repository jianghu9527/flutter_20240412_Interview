import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class documentView extends StatefulWidget {
  const documentView({super.key});

  @override
  State<documentView> createState() => _documentViewState();
}

class _documentViewState extends State<documentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("Document View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      // Add your body content here
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           print("--------Document View-----------");
        },
        child: Icon(Icons.add),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("什么是Islote",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red), textAlign:  TextAlign.center,),
        
          Text("  https://www.jianshu.com/p/02de150a2e92",style: TextStyle(fontSize: 16, color: Colors.black),),
           Text("  Flutter 中的 Isolate 是 Dart 语言提供的一种并发机制，用于实现多线程编程。每个 Isolate 都是独立的、隔离的执行单元，拥有自己的内存空间和事件循环，可以并发地执行任务而不会受到其他 Isolate 的影响。在 Flutter 中，主要有两种类型的 Isolate：  \n    UI Isolate： 也称为主 Isolate，负责 Flutter 应用的 UI 渲染和事件处理。这个 Isolate 是由 Flutter 引擎自动创建和管理的，开发者通常无需直接操作它。  \n   Compute Isolate： 也称为后台 Isolate，用于执行耗时操作或计算密集型任务，以避免阻塞 UI Isolate。开发者可以使用 compute 函数或手动创建 Isolate 来利用 Compute Isolate。",softWrap: true,style: TextStyle(fontSize: 16, color: Colors.black),),
            Text("接口例子   https://3g.163.com/photocenter/api/list/0001/00AP0001,3R710001,4T8E0001/30/100.json")
        ],
      )


      
    );
  }
}