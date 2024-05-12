import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_20240407_code_wall/subview/User.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
 


/**
 * 
 * 网络请求方法1
 * NetworkFrame
 * 网络框架
 * 
 * 
 * https://www.bilibili.com/video/BV1G3411K7rK/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772
 *
 */
class NetworkFrame extends StatefulWidget {
  const NetworkFrame({super.key});

  @override
  State<NetworkFrame> createState() => _NetworkFrameState();
}

class _NetworkFrameState extends State<NetworkFrame> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
          print("----------------网络请求方法1-----------------");

           fetchData();

        }, child: Text("网络请求方法1_HttpClient")),

           SizedBox(height: 100,),

        OutlinedButton(onPressed: (){ 
             httpasync();
        print("----------------网络请求方法2-----------------"); 
        }, child: Text("http")),
   SizedBox(height: 100,),

   
        OutlinedButton(onPressed: (){ 
             UserParen();
        print("----------------解析json-----------------"); 
        }, child: Text("解析json")),




      ],
    );
  }
}



/**
 * https://www.bilibili.com/video/BV1G3411K7rK/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772
 */
  void  UserParen(){

// // JSON字符串
// String jsonString = '{"name": "John", "age": 30}';

// // 解析JSON字符串
// Map<String, dynamic> jsonMap = jsonDecode(jsonString);
// String name = jsonMap['name']; // 访问JSON中的字段
// print("----------------------------name:${name}");
// // 将Dart对象转换为JSON字符串
// Map<String, dynamic> person = {'name': 'Alice', 'age': 25};
// String jsonPerson = jsonEncode(person);
// print("----------------------------jsonPerson:${jsonPerson}");




String  jsonstr='{"name":"taitai","age":56}';
Map map={"name":"jiujiu","age":26};
  Map  mst =  jsonDecode(jsonstr);
        print("---------"+mst["name"]);
     String mstt  = jsonEncode(map);

        //  User.fromJson(mstt);



  }


Future<String> fetchData() async { 

 String uri="https://3g.163.com/photocenter/api/list/0001/00AP0001,3R710001,4T8E0001/30/100.json";
 HttpClient httpClient=HttpClient();
 HttpClientRequest request=await httpClient.getUrl(Uri.parse(uri));
 HttpClientResponse response=await request.close();
 String responseBody=await response.transform(utf8.decoder).join();
 httpClient.close();
 print("----------------fetchData-------结果---------"+responseBody);
 print("------------statusCode----------${response.statusCode}");

  // List<Autogenerated>   autoaged=    json.decoder(responseBody);

 
 
 return responseBody; 
}

 
 void httpasync() async {

 var queryParams = {
    'userId': '1',
    'postId': '5',
  };

     var  maspheaders= Map<String, String>;
     var  urls=Uri.parse("https://jsonplaceholder.typicode.com/posts"); 


  var uriWithParams = Uri(
    scheme: urls.scheme,
    host: urls.host,
    path: urls.path,
    queryParameters: queryParams,
  );

 var response = await http.get(uriWithParams);
  print('---------------------- Code: ${response.statusCode}');

  if (response.statusCode == 200) {
      print('----------------------Response body: ${response.body}');
    } else {
      print('---------------------Request failed with status: ${response.statusCode}');
    }


  //    http.Client.get(urls,maspheaders).then((response){
  //   print("------------statusCode----------${response.statusCode}");
  //   print(response.body);
  // });

 }

