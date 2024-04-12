import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/main/mainfragment.dart';
import 'sign.dart';

/**
 * 
 * 
 */
class HomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    // ScreenUtil.init(context,width: 750, height: 1334);
    ScreenUtil.init(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            'https://img.zcool.cn/community/0372d195ac1cd55a8012062e3b16810.jpg'),
        fit: BoxFit.cover,
      )),

      // Image.asset('images/bg_office_top.jpg',
      //   height: 300,
      //   width: 400,
      //   fit: BoxFit.fill,)

      child: Container(
        child: HomeText_name(),

        // color: Colors.red.withOpacity(.5),
        // child: Center(
        //   child: Text(
        //     "我在图片的上面哦~",
        //     style: TextStyle(color: Colors.white, fontSize: 33),
        //   ),
        // ),
      ),
    );
  }
}

class HomeText_name extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<HomeText_name> {
  //获取Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String userName = "";
  String password = "";
  bool isShowPassWord = false;

  void login() {
    //读取当前的Form状态
    var loginForm = loginKey.currentState;
    //验证Form表单
    if (loginForm!.validate()) {

      loginForm.save();
      print('---------------userName: ' + userName + ' password: ' + password);
      // var  route=      MaterialPageRoute(builder: (context) =>   mainfragment()); //skipstate    mainfragment
      var route = MaterialPageRoute(builder: (context) => SignInPage());
      Navigator.push(context, route);
    }
  }

  void showPassWord() {
    setState(() {
      isShowPassWord = !isShowPassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'MECT登录界面',
      debugShowCheckedModeBanner: false,

      // routes:{
      //   "ProductDetail": (context) => ProductDetail(),
      //
      //
      // } ,

      home: Scaffold(
        // backgroundColor: Colors.grey,
        backgroundColor: Color.fromARGB(192, 192, 192, 100),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 100.0, bottom: 10.0),
                child: new Text(
                  '登陆界面',
                  style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53), fontSize: 30.0),
                )),
            new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Form(
                key: loginKey,
                // autovalidate: true,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0))
                      
                                  
                                  ),
                       
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '请输入手机号',
                          labelStyle: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 93, 93, 93)
                              
                              ),
                          border: InputBorder.none,
                                          // border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Color.fromARGB(255, 126, 126, 126),
                            ),
                            onPressed: () {

                              print("---------------------66666777778888---------");
                            },
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          userName = value!;
                         print("---------------------userName:"+userName);
                        },
                        validator: (phone) {
                        print("-----------phone:$phone");
                          if(phone!.length == 0){
                            return '手机号码不能为空';
                          } 
                          
                          return null;
                        },
                        onFieldSubmitted: (value) {
                           print("-----------onFieldSubmitted:$value");
                          
                        },
                      ),
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0))),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                            labelText: '请输入密码',
                            labelStyle: new TextStyle(
                                fontSize: 15.0,
                                color: Color.fromARGB(255, 93, 93, 93)),
                            border: InputBorder.none,
                            suffixIcon: new IconButton(
                              icon: new Icon(
                                isShowPassWord
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromARGB(255, 126, 126, 126),
                              ),
                              onPressed: showPassWord,
                            )),
                        obscureText: !isShowPassWord,
                        onSaved: (value) {
                          password = value!;
                        },
                        validator: (value) {
                          if(value!.length !=6){
                            return '请输入6位密码';
                          }
                          return null;
                        },
                      ),
                    ),
                    new Container(
                      height: 45.0,
                      margin: EdgeInsets.only(top: 40.0),

                      child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              login();
                            },
                            child: Text("登录"),
                            style: ButtonStyle(

                                // backgroundColor: MaterialStateProperty.all(Colors.blue),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.yellow;
                                  }
                                  return Colors.blue;
                                }),
                                textStyle: MaterialStateProperty.all(TextStyle(
                                  fontSize: 20,
                                ))),
                          )),
//                       child:  Wrap(
//                         children: [
//                           ElevatedButton(onPressed: (){
//                              login();
//                            }, child:   Text(
//     '登录',
//     style: TextStyle(
//
//     fontSize: 14.0,
//     color:Colors.red
//
//     ),
//     ), style:ButtonStyle(
//                                textStyle: MaterialStateProperty.all( TextStyle(
//                                    fontSize: 10
//                                )),
//
//     foregroundColor:  MaterialStateProperty.resolveWith((states){
//     if(states.contains(MaterialState.pressed)){
//     return Colors.red;
//     }
// return Colors.white24;
//
//     }
//
//                              ),
//
//
//     // shape:   RoundedRectangleBorder(borderRadius: new BorderRadius.circular(45.0)),
//
//     ),
//                            ),
//                         ],
//                         // child:   RaisedButton(
//                         // // child:
//                         //   onPressed: login,
//                         //   color: Color.fromARGB(255, 61, 203, 128),
//                         //   child:
//                         //   shape:   RoundedRectangleBorder(borderRadius: new BorderRadius.circular(45.0)),
//                         // ),
//                       ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Container(
                            child: Text(
                              '注册账号',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color.fromARGB(255, 53, 53, 53)),
                            ),
                          ),
                          Text(
                            '忘记密码？',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Color.fromARGB(255, 53, 53, 53)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
