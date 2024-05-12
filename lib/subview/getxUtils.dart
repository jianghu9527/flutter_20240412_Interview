 

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_20240407_code_wall/subview/DebugActivity.dart';
import 'package:get/get.dart';

import 'AppPage.dart';
import 'CounterController.dart';

/**
 * https://www.bilibili.com/video/BV17m4y1a7zJ/?spm_id_from=333.337.search-card.all.click&vd_source=83fdbd83d34aa2af54f70627e76de772
 */
class GetxUtils extends StatefulWidget {
  const GetxUtils({super.key});

  @override
  State<GetxUtils> createState() => _GetxUtilsState();
}

class _GetxUtilsState extends State<GetxUtils> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
          return GetMaterialApp(
      title: "getx使用",
     debugShowCheckedModeBanner: false,
     color: Colors.red,

      initialRoute: "/",
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: AppPage.routes,

      
      home: Scaffold(
        appBar: AppBar(
          title: Text("GETX教程教程教程",style: TextStyle(backgroundColor: Colors.blue,color: Colors.yellow),),centerTitle: true, 
        ),
          backgroundColor: Colors.amber,
        body: Container(
                
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //   image: NetworkImage(
      //       'https://img.zcool.cn/community/0372d195ac1cd55a8012062e3b16810.jpg'),
      //   fit: BoxFit.cover,
      // )),
            child: Column(
              children: <Widget>[

           Container(
            color: Colors.blue,
            child: SizedBox(height: 200,width: double.infinity,
                child: Text("SizedBox",style: TextStyle(color: Colors.red,fontSize: 20),),
                ),
           
           ),
              
            
            TextButton(onPressed: (){

print("--------------TextButton----------Expanded--------------");
            }, child: Text("Dilog")),
  
      Expanded(child: Container(
        
        child: Text("Text"),

      )),

//https://www.cnblogs.com/atao24/p/17813052.html
            ElevatedButton(onPressed: (){
              Get.toNamed("/new");
              // Get.to(NewPage());
              // Get.to(DebugActivity());
              print("--------------ElevatedButton----------getx界面跳转--------------");

            }, child: Text("getx界面跳转")),
 
                  SizedBox(height: 20,),
 
            ElevatedButton(onPressed: (){

          //  Get.back(); 
          //  Get.offAll("/new"); // 返回根
              print("--------------ElevatedButton----------Get.back(); // 返回上一个路由、关闭弹窗、弹出层等--------------");


               Get.to(CounterController());




            }, child: Text("返回上一个路由")), 
             SizedBox(height: 200,),


    
              ],
            ),
        ),
      ),
    );
  }
}