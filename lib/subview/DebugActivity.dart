
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 
 


class DebugActivity extends StatefulWidget {
  const DebugActivity({super.key});

  @override
  State<DebugActivity> createState() => _DebugActivityState();
}

class _DebugActivityState extends State<DebugActivity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      title:"debug",
      theme: ThemeData(primarySwatch:   Colors.blue),
      debugShowCheckedModeBanner: false,

     home: Scaffold(
      body: Column(children: [
        Text("debug"),
        ElevatedButton(onPressed: (){
          printPackage();


        }, child: Text("打印包信息")),
        
      ],),
             
     ),

    );
  }


Future<void>  printPackage() async {
  // // 读取pubspec.yaml文件
  // final pubspecFile = File('pubspec.yaml');
  // final pubspecContent = await pubspecFile.readAsString();
 
  // // 解析pubspec.yaml内容
  // final pubspecMap = loadYaml(pubspecContent) as YamlMap;
 
  // // 获取包名称
  // final packageName = pubspecMap['name'];
 
  // // 获取包的ID
  // final packageId = pubspecMap['name'];
 
  // // 打印结果
  // print('Package Name: $packageName');
  // print('Package ID: $packageId');




  
}



 void  getAppInfor(){
 

  // PackageInfo packageInfo = PackageInfo.fromPlatform();
  // String appName = packageInfo.appName;
  // String packageName = packageInfo.packageName;
  // String version = packageInfo.version;
  // String buildNumber = packageInfo.buildNumber;

  // print('App Name: $appName');
  // print('Package Name: $packageName');
  // print('Version: $version');
  // print('Build Number: $buildNumber');


 }


}