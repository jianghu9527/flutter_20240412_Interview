import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Nagaland
 * 
 * 纳格兰项目
 * 
 * 纳格兰项目是印度的一个非政府组织，旨在帮助贫困地区的人。
 * 
 * 纳格兰项目由纳格兰社区发展基金会（Nagaland Community Development Foundation）管理。
 * 
 * 纳格兰社区发展基金会成立于1991年，旨在通过提供教育和就业机会，帮助贫困地区的人。
 * 
 * 纳格兰社区发展基金会提供教育、医疗保健和住房服务，并帮助人们建立社区。
 * 
 * 纳格兰社区发展基金会还提供贷款和奖学金，帮助人们实现财务独立。
 * 
 * 纳格兰社区发展基金会还提供咨询服务，帮助人们解决生活问题。
 * 
 * 纳格兰社区发展基金会还提供培训和就业机会，帮助人们实现职业发展。
 * 
 * 纳格兰社区发展基金会还提供法律服务和法律援助，帮助人们解决法律问题。
 * 
 * 纳格兰社区发展基金会还提供金融服务，帮助人们实现财务独立。
 * 
 * 纳格兰社区发展基金会还提供咨询服务，帮助人们解决生活问题。
 * 
 * 纳格兰社区发展基金会还提供培训和就业机会，帮助人们实现职业发展。
 * 
 * 纳格兰社区发展基金会还提供法律服务和法律援助，帮助人们解决法律问题。
 * 
 * 纳格兰社区发展基金会还提供金融服务，帮助人们实现财务独立。
 * 
 * 纳格兰社区发展基金会还提供咨询服务，帮助人们解决生活问题。
 *
 * 
 */

class Nagaland extends StatefulWidget {
  const Nagaland({super.key});

  @override
  State<Nagaland> createState() => _NagalandState();
}

class _NagalandState extends State<Nagaland> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 4, 248, 17),
      appBar: null,
      // appBar: AppBar(
      //   title: Text("纳格兰"),
      //   centerTitle: true,
      //   // leading: null,
      //   // automaticallyImplyLeading: false,
      //   titleTextStyle: TextStyle(
      //     fontSize: 20,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white,
      //   ),
      // ),
      body: Stack(
        
         fit: StackFit.expand,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

 

 Image.asset(
              "/images/nagaland_start.png",
              fit: BoxFit.cover,
              // color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),


Column(
crossAxisAlignment: CrossAxisAlignment.end,
children:[
          Padding(
            padding: EdgeInsets.only(right: 20),
          

            child:GestureDetector( 
              behavior: HitTestBehavior.opaque,
             onTap:(){
              print("--------------onTap---------");
            },
              child: Text(
 
         "倒计时：${_countValue}",
         style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            // background: Paint(Color(Color.fromRGBO(255, 64, 129, 1)))  ,
          ),
                        
            ) ,

         
            )
            
            
            
      
          ),
]



)
 
 
        ],
      ),
    );
  }

  Timer? _timer;
  int _countValue = 5; // 用于记录计时的变量

  void startTimer() {
    // Timer.periodic方法可以反复执行，这里设置执行周期为1s
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        // 使用setState来刷新整个StatefulWidget的状态
        if (_countValue > 0) {
          _countValue--;
          print(_countValue);
        } else {
          print('-------jump----------'); // 这里使用print来代替跳转的行为，后面再进行不断完善
          _timer?.cancel(); // 记得取消掉计时器，防止出现内存泄漏等问题

          // 跳转到下一个页面
          // Navigator.pushReplacementNamed(context, "Main_nagaland");
        }
      });
    });
  }

  @override
  void initState() {
    // 在StatefulWidget的生命周期中，initState只会在最开始被执行一次
    super.initState();
    startTimer();
    print("---------------initState--------------");
  }

  @override
  void dispose() {
    // dispose方法也只会在StatefulWidget的生命周期中被执行一次，销毁内存
    _timer?.cancel(); // 这里防止计时器没有计时到0时，此页面就被销毁而跳转了，保证严谨
    super.dispose();
    print("---------------dispose--------------");
  }
}
