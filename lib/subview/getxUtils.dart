 

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return MaterialApp(
      title: "getx使用",
     debugShowCheckedModeBanner: false,
     color: Colors.red,
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

      ))
    
              ],
            ),
        ),
      ),
    );
  }
}