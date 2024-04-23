// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'sigInlog.dart';
import '/main/mainfragment.dart';

/**
 * 
 * 
 * https://www.bilibili.com/video/BV16u4y1N7bR/?spm_id_from=333.337.search-card.all.click&vd_source=83fdbd83d34aa2af54f70627e76de772
 */
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});



  void siginlogin(){
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: null,
      body: Container(
        child: Container(
          color: Color.fromARGB(255, 221, 219, 115),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            // Padding(padding: EdgeInsets.only(top: 20.0),)
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: 30.0, top: 80.0, right: 50.0, bottom: 10.0)),
              sigInlog(),
              // Padding(padding: EdgeInsets.all(60)),
              Padding(
                  padding: EdgeInsets.only(
                      left: 30.0, top: 20.0, right: 50.0, bottom: 10.0)),
              Form(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "输入手机号码",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(10)),

              Form(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "输入密码",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: double.infinity,
                height: 45.0,
                child: FilledButton(
                    onPressed: () {
                      print("-----------输入手机号码---------提交----222------");

                  // siginlogin();


 var route = MaterialPageRoute(builder: (context) => mainfragment());
      Navigator.push(context, route);



                      // Navigator.push(context, route)
                      // SnackBar(content: content)

// showDialog(context: context, builder: builder)
                      // AlertDialog(
                      //   title: Text("提示"),
                      //   content: Text("即将进入主界面"),
                      //   actions: <Widget>[
                      //     FloatingActionButton(
                      //       onPressed: () {
                      //         print("---------------即将进入主界面-------------");
                      //         Navigator.of(context).pop();
                      //       },
                      //       child: Text("关闭"),
                      //     ),
                      //   ],
                      // );

                      AlertDialog(
                        content: SizedBox(
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "提示1",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      );

                      print("-----------输入手机号码-------------333------");
                    },
                    child: Text("获取验证码")),
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (valen) {}),
                  RichText(
                      text: TextSpan(
                          text: "已经阅读并且同意",
                          style: TextStyle(color: Colors.black87, fontSize: 12),
                          children: [
                        TextSpan(
                            text: "用户协议",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12)),
                        TextSpan(
                            text: " 与 ",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 12)),
                        TextSpan(
                            text: "隐私协议",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12)),
                      ]))
                ],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      print("----------其他方式登录----------------");
                    },
                    child: Text("其他方式登录"),
                  ),
                  TextButton(
                    onPressed: () {
                      print("----------遇到了其他问题？----------------");
                    },
                    child: Text("遇到了其他问题？"),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
