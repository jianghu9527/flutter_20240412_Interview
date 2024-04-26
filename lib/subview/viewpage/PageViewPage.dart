import 'package:flutter/material.dart';




/**
 * 
 * 
 * https://www.jianshu.com/p/f4ce9ad02340
 * 
 * 
 */
class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  List<Widget> _listWidge() {
    List<Widget> list = [];
    for (var i = 0; i < 5; i++) {
      list.add(Center(
        child: Text(
          "第 $i 页",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,   //滚动方向,水平/上下
        reverse: true,    //倒序滚动
        children: _listWidge(),
      ),
    );
  }
}