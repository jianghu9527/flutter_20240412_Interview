// import 'package:flutter/widgets.dart';



// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 * 
 * MediaQuery： Flutter 提供了 MediaQuery 类，可以获取当前设备的屏幕信息，如屏幕宽度、高度、像素密度等。你可以根据这些信息来调整 UI 的布局和大小。
 *   
 * 
 * 手机屏幕尺寸适配：在 Flutter 中，可以使用 MediaQuery 类来获取当前设备的屏幕信息，并根据屏幕尺寸来调整 UI 的布局和大小。
 *   
 * 
 * 例如，可以使用 MediaQuery.of(context).size.width 来获取当前设备的屏幕宽度，并根据不同的屏幕宽度来设置不同的布局和大小。
 *   
 * 
 * 你可以使用 MediaQuery.of(context).size.width / 375 来计算在 iPhone 6/7/8 上应该使用的字体大小或间距。
 *
 * 
 */
class adaptation extends StatefulWidget {
  const adaptation({super.key});

  @override
  State<adaptation> createState() => _adaptationState();
}

class _adaptationState extends State<adaptation> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Screen Size Demo'),
        ),
        body: Center(
          child: Text('Screen Width: $screenWidth\nScreen Height: $screenHeight'),
        ),
      ),
    );
  }
}