import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 
import 'package:permission_handler/permission_handler.dart';
// import 'package:agora_rtc_engine_example/components/android_foreground_service_widget.dart';
// import 'package:agora_rtc_engine_example/components/config_override.dart';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';

import 'join_channel_video/join_channel_video.dart';
 

/**
 * RTC 
 */
class RTC_main extends StatefulWidget {
  const RTC_main({super.key});

  @override
  State<RTC_main> createState() => _RTC_mainState();
}

const bool kIsWeb = bool.fromEnvironment('dart.library.js_util');
  bool _isWebSetup = false;
  bool _showPerformanceOverlay = false;

  @override
  void initState() { 
    _isWebSetup = !kIsWeb; 
    _requestPermissionIfNeed();
  }


  Future<void> _requestPermissionIfNeed() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      await [Permission.microphone, Permission.camera].request();
    }
  }

class _RTC_mainState extends State<RTC_main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "视频1",
      
      home:  Directionality(
        textDirection: TextDirection.ltr, // 或者 TextDirection.rtl，根据你的语言需求设置
        child: Scaffold(
          // 在这里放置你的 Scaffold 内容

      appBar: AppBar(
        title: Text(
          "视频通话",
          style: TextStyle(color: Colors.blueGrey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "视频通话",
            //   style: TextStyle(fontSize: 24),
            // ),
            TextButton(onPressed: (){
              print("---------开始----视频通话---------------");
 
      var route = MaterialPageRoute(builder: (context) => JoinChannelVideo()); 
      Navigator.push(context, route);

	// Navigator.push(
  //           context,
  //           new MaterialPageRoute(builder: (context) => new JoinChannelVideo()),
  //         );
  
            }, child: Text("开始视频通话",style: TextStyle(fontSize: 24,backgroundColor: Colors.blueGrey),)),
         
          ],
        ),
      ),
          
        ),
      ),
      );
     

  }
}