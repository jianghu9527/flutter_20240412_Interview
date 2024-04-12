import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



/**
 * https://www.bilibili.com/video/BV1eJ411q7V3?p=64&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 
 * 个人中心
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
            backgroundColor: Colors.blue,
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
              ],
            )));
    //   return Container(
    //     child: Text("MemberPage")
    //     );

  }

  Widget _topHead() {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        color: Colors.pinkAccent,
        child: Center(
       child: Column(
        
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 50.0),
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
          margin: EdgeInsets.only(top:100),
          child: Text("技术胖",style: TextStyle(fontSize: 30,color: Colors.black87),
          ),
          ),
      


        ]
        ),
  ),
        );
  }
}
