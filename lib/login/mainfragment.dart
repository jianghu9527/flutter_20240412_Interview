


import 'package:flutter/material.dart';
import 'package:flutter_20240407_code_wall/main/MemberPage.dart';
import 'package:flutter_20240407_code_wall/main/Listproduct.dart';
import 'package:flutter_20240407_code_wall/main/HomePage.dart';
import 'package:flutter_20240407_code_wall/main/MsgPage.dart';



class mainfragment extends StatefulWidget {
  const mainfragment({super.key});

  @override
  State<mainfragment> createState() => _mainfragmentState();
}

class _mainfragmentState extends State<mainfragment> {

    final List<BottomNavigationBarItem> bottomitem=[
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home, color: Colors.blue,),
        backgroundColor: Colors.blue,
        label: "首页"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      activeIcon: Icon(Icons.message, color: Colors.blue,),
      backgroundColor: Colors.blue,
      label: "消息",

      tooltip: '消息',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        activeIcon: Icon(Icons.shopping_cart, color: Colors.blue,),
        backgroundColor: Colors.blue,
        label: "商品"
    ),


    //    BottomNavigationBarItem(
    //   icon: Icon(Icons.shopping_cart),
    //   backgroundColor: Colors.amber,
    //   label: "购物车"
    // ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        activeIcon: Icon(Icons.person, color: Colors.red,),
        backgroundColor: Colors.red,
        label: "我的"

    ),
  ];

TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.red);


  final   pagecnter =[
    Center(
      // child: Text("首页",style: TextStyle(fontSize: 20)),
      child: HomePage(),

    ),

    Center(
      // child: Text("我的消息",style: TextStyle(fontSize: 20)),
      child: MsgPage(),

    ),

    Center(
      // child: Text("商品列表",style: TextStyle(fontSize: 20)),

      child: Listproduct(), 

    ),

    Center(
      // child: Text("我的",style: TextStyle(fontSize: 20)),

        child:   MemberPage(),

    ),
  ];

  int _currentIndex = 0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(

            bottomNavigationBar: BottomNavigationBar(
        items: bottomitem,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },

      ),
      body: pagecnter[_currentIndex],
    );
  }



    void _changePage(int index){
    if(index!=_currentIndex){
      setState(() {
        _currentIndex=index;
        print("当前界面--------------------------------==${index}");
      });
    }

  }



}