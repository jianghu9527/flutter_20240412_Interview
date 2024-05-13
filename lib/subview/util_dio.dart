import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20240407_code_wall/utils/HttpUtil.dart';
import 'package:http/http.dart' as http;

import 'mlist/ProductListScreen.dart';

class util_dio extends StatefulWidget {
  const util_dio({super.key});

  @override
  State<util_dio> createState() => _util_dioState();
}

class _util_dioState extends State<util_dio> {


  String _dataes = 'No data'; 
 String _responseData = '点击按钮加载数据';


  Future<void>  sendData(String dataes) async {
          print("-----------------------Dio请求----------999-----");
                Response onee = await Dio()
                    .get("https://jsonplaceholder.typicode.com/posts/1");
                print("---------Dio请求----1-" + onee.toString()); 
                setState(() {
                  _dataes = onee.data.toString();
                  print("---------Dio请求--dataes--2-" + _dataes.toString());
                });
       
  }


  @override
  void initState() {
    super.initState();
    HttpUtil.getHttp(url:"https://jsonplaceholder.typicode.com/posts/1",onCallBack: (vlan){

      print("----------------封装的网络请求数据-------------${vlan}");

    });


  }

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        _responseData = jsonData['title'];
          print("---------Dio请求--responseData--============-" + _responseData.toString());
      });
    } else {

      setState(() {
             print("---------Dio请求--网络请求失败--2-"   );
        _responseData = '网络请求失败';
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "网络框架",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
          children:<Widget> [
            // Text(
            //   "dio",
            //   style: TextStyle(fontSize: 30, color: Colors.white),
            // ),
            // Text(
            //   "dio是Flutter中使用最多的网络请求库，它支持Restful API、FormData、拦截器、请求取消、Cookie管理、文件上传/下载等...",
            //   style: TextStyle(fontSize: 20, color: Colors.white),
            // ),

             ElevatedButton(
              onPressed: _fetchData,
              child: Text('点击加载数据'),
            ),


              SizedBox(height: 20),
            Text(
              _responseData,
              style: TextStyle(fontSize: 18),
            ),



            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
          

              onPressed: () async { 
                sendData("");
                // print("-----------------------Dio请求----------999-----");
                // Response onee = await Dio()
                //     .get("https://jsonplaceholder.typicode.com/posts/1");
                // print("---------Dio请求----1-" + onee.toString());

                // setState() {
                //   _dataes = onee.data.toString();
                //        print("---------Dio请求--dataes--2-" + _dataes);
                // }

                Response oneejson =
                    await Dio().get("http://116.62.149.237:8080/USR000100003");

                jsonEncode(oneejson.toString());
                print("---------Dio请求----2-" + oneejson.toString());
                print("----------Dio请求------3-----$oneejson");
              },
              // child: Text("Dio请求",style: TextStyle(fontSize: 30,color: Colors.white),)
              // style:   ButtonStyle(
              // ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 80, left: 80),

                // child: Text("Dio请求",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 228, 94, 94)),
                child: Text(
                  "Dio请求数据",
                  selectionColor: Color.fromARGB(216, 159, 241, 7),
                  style: TextStyle(color: Color.fromARGB(223, 245, 242, 242)),
                ),
              ),
            ),


            SizedBox(height: 20,), 
            Text("服务区返回的数据："+_dataes),

            SizedBox(height: 20,), 

            ElevatedButton(onPressed: (){ 
                  var route = MaterialPageRoute(builder: (context) => ProductListScreen());
                        Navigator.push(context, route); 

            }, child: Text("跳转列表界面")),
              SizedBox(height: 20,), 

            ElevatedButton(onPressed: (){ 
                  // var route = MaterialPageRoute(builder: (context) => ProductListScreen());
                  //       Navigator.push(context, route); 

            }, child: Text("网络请求模块")),


          ]),
        ),
      ),
    );
  }

 
}
