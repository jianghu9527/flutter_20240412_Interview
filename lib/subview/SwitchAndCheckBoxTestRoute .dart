import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * https://book.flutterchina.club/chapter3/radio_and_checkbox.html#_3-4-1-%E7%AE%80%E4%BB%8B 
 * 单选开关和复选框
 * 
 * 如果要给控件添加一个内边距使用  Padding
 */
class SwitchAndCheckBoxTestRouteActivity extends StatefulWidget {
  // const Switch({super.key});

  @override
  State<SwitchAndCheckBoxTestRouteActivity> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchAndCheckBoxTestRouteActivity> {
  bool _switchSelected = false; //维护单选开关状态

  bool _checkboxSelected = true; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          appBar: AppBar(
            title: Text("单选开关和复选框"),
            centerTitle: true,
          ),
          body: Column(children: <Widget>[
            SwitchListTile(
              title: Text("Switch"),
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                  print(
                      "-------------------switchSelected------------${value}");
                });
              },
            ),

            //         Switch(value: _switchSelected, onChanged: (value){
            //     setState(() {
            //       _switchSelected=value;
            //     });
            // }),


    Column(
      
      children: [

        Padding(padding: EdgeInsets.only(right: 30,left: 50),
        
        child: Container(
          decoration: BoxDecoration(
             color: Colors.green,
              borderRadius: BorderRadius.circular(10),



          ),
          child: Row(
          
// crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, ////spaceEvenly  主轴元素的排序方式（水平布局中，X轴是主轴）
              children: [
                Text("复选框"),
                SizedBox(
                  height: 20,
                ),
                Checkbox(
                  value: _checkboxSelected,
                  activeColor: Colors.red, //选中时的颜色

                  onChanged: (value) {
                    setState(() {
                      _checkboxSelected = value!;
                      print("-------------------Checkbox------------${value}");
                    });
                  },
                )
              ],
            ),
        )
        ),

      ],
    )



          ]),
        ));
  }
}
