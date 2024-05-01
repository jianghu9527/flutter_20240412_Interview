import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/**
 * https://zhuanlan.zhihu.com/p/363966176?utm_id=0
 * 可以设置子Widget相对于父Widget的位置信息都可以设置alignment属性来确定子Widget的坐标原点及位置信息。（Stack仅对未设置Positioned对齐方式的Widget起作用）
 */
class AlignView extends StatefulWidget {
  const AlignView({super.key});

  @override
  State<AlignView> createState() => _AlignViewState();
}

class _AlignViewState extends State<AlignView> {
  @override
  Widget build(BuildContext context) {
    return Container(
   width: 100,
  height: 100,
  color: Colors.red,
  child: Align(
    alignment: Alignment.bottomRight,
    child: Text("123456")
  ),);
  }
}