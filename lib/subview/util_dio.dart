import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class util_dio extends StatefulWidget {
  const util_dio({super.key});

  @override
  State<util_dio> createState() => _util_dioState();
}


class _util_dioState extends State<util_dio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue, 
      appBar: AppBar(title: Text("网络框架",style: TextStyle(color:Colors.black54),),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.teal,
      ),
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("dio",style: TextStyle(fontSize: 30,color: Colors.white),),
              Text("dio是Flutter中使用最多的网络请求库，它支持Restful API、FormData、拦截器、请求取消、Cookie管理、文件上传/下载等...",
              style: TextStyle(fontSize: 20,color: Colors.white),),

              
          TextButton(
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.black )),
            // padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            // // Padding.all(50)
         
            // style: TextButton.styleFrom(
            //   foregroundColor: Colors.white, backgroundColor: Colors.teal,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10)
            //   )
            // ),

            onPressed: () async { 
             print("-----------------------Dio请求----------999-----");
           Response onee = await Dio().get("https://jsonplaceholder.typicode.com/posts/1"); 
             print("---------Dio请求----1-"+onee.toString());

      Response oneejson= await Dio().get("http://116.62.149.237:8080/USR000100003"); 

      jsonEncode(oneejson.toString());
        print("---------Dio请求----2-"+oneejson.toString());
      print("----------Dio请求------3-----$oneejson");

 
          }, 
          // child: Text("Dio请求",style: TextStyle(fontSize: 30,color: Colors.white),)
          // style:   ButtonStyle(
            
          // ),
          
          child:  Padding(
            
            padding: EdgeInsets.only(top: 20,bottom: 20,right: 80,left: 80),
            
            // child: Text("Dio请求",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 228, 94, 94)),
              child: Text("Dio请求数据",
              selectionColor: Color.fromARGB(216, 159, 241, 7),
              style: TextStyle(color: Color.fromARGB(223, 245, 242, 242)),
              ),
          ),
          
          
          )

            ]
             ),


 


                ),
      ),
    );
  }
}