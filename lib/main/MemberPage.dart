import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



/**
 * 
 * https://www.bilibili.com/video/BV1eJ411q7V3?p=64&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 个人中心
 * https://www.bilibili.com/video/BV1eJ411q7V3/?p=65&spm_id_from=pageDriver&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 订单区域布局
 * 
 */
class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            // appBar: null,
            appBar: AppBar(
              title: Text("个人中心"),
              centerTitle: true,
              leading: null,
              backgroundColor: Color.fromARGB(144, 199, 174, 174),
            ),
            backgroundColor: Colors.grey.shade300,
            body:
                // Center(
                //   child: Container(
                //     color: Colors.white,
                //      child: Text("MemberPage",style: TextStyle(fontSize: 30.0,color: Colors.black87),),
                //   ),
                // )

                ListView(
              children: <Widget>[

                  _topHead(),
                  _orderTitle(),
                  _orderType(),
              ],
            )));
    //   return Container(
    //     child: Text("MemberPage")
    //     );

  }

  Widget _topHead() {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: Colors.pinkAccent,
        child: Center(
       child: Column(
        
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 30.0),
              child: ClipOval(
                // backgroundImage: NetworkImage(
                //     // "https://avatars.githubusercontent.com/u/1044392?v=4"
                //       "http://blogimages.jspang.com/blogtouxiang1.jpg"
                //     ),

          
            child: Image.network("https://q1.itc.cn/q_70/images03/20240320/fcf023d835c54f78bac6c7efc98fbb4c.jpeg",
            width: 100,height: 100,fit: BoxFit.cover,
            ),

              )
              ),


        Container(
          margin: EdgeInsets.only(top:20),
          child: Text("牛肉",style: TextStyle(fontSize: 30,color: Colors.black87),
          ),
          ),
      


        ]
        ),
  ),
        );
  }

//我的订单标题
  Widget _orderTitle(){
 
 return Container(
  margin: EdgeInsets.only(top: 10),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border(bottom: BorderSide(width: 1,color: Colors.black12))
  ),
  child: ListTile(
    leading: Icon(Icons.list),
    title: Text("我的订单"),
    trailing: Icon(Icons.arrow_right),
  ),
 );
  }


  
 Widget _orderType() {
 
return Column(

  children: [
Container(
margin: EdgeInsets.only(top:5),
width: ScreenUtil().setWidth(750),
 
height:ScreenUtil().setHeight(150),
padding: EdgeInsets.only(top:20),

child: ListView(
  scrollDirection: Axis.horizontal,
  children:<Widget> [
    Container(
      width: ScreenUtil().setWidth(100),
      child: Column(
        children: <Widget>[
          Icon(Icons.query_builder,
             size:30, 
             ),
             Text("待付款")
       
        ],
      ),
    ),
//---------------------------------------------------
    Container(
      width: ScreenUtil().setWidth(100),
      child: Column(
        children: <Widget>[
          Icon(Icons.party_mode,
             size:30, 
             ),
             Text("待发货")
       
        ],
      ),
    ),

//---------------------------------------------------
    Container(
      width: ScreenUtil().setWidth(100),
      child: Column(
        children: <Widget>[
          Icon(Icons.disabled_by_default,
             size:30, 
             ),
             Text("待收货")
       
        ],
      ),
    ),
//---------------------------------------------------


    Container(
      width: ScreenUtil().setWidth(100),
      child: Column(
        children: <Widget>[
          Icon(Icons.directions_car,
             size:30, 
             ),
             Text("待评价")
       
        ],
      ),
    ),





  ],

),
 
),

  Column(

  children: [
 
    _myListTile("意见反馈"),
    _myListTile("关于我们"),
    _myListTile("联系我们"),
    _myListTile("设置"),
    _myListTile("退出登录"),


  ],
)


  ],



 






);
  }
}




  Widget _myListTile(String title){

    return Container(
       decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.blur_circular),
        title: Text(title),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

