import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_20240407_code_wall/main/HomePage.dart';
import 'package:path/path.dart';


/**
 * 弹窗
 */
class showDialogView extends StatefulWidget {
  const showDialogView({super.key});

  @override
  State<showDialogView> createState() => _showDialogState();
}

class _showDialogState extends State<showDialogView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
              appBar: AppBar(
        title: Text('  弹窗示例'),
      ),
      body: Center( 
        child: ElevatedButton(
              style: ButtonStyle(shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
              // padding: MaterialStateProperty.all(10),
                padding: MaterialStateProperty.resolveWith((states) {
              // 根据按钮的不同状态返回不同的内边距
              if (states.contains(MaterialState.hovered)) {
                // 鼠标悬停时的内边距
                return EdgeInsets.all(18.0);
              } else {
                // 默认状态下的内边距
                return EdgeInsets.all(20.0);
              }
            }),
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          onPressed: () {
            _showInputDialog(context);
          },
          child: Text('显示弹窗',style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      ),

      ),
    );
  }




    void _showInputDialog(BuildContext context) {
    TextEditingController _textController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('输入框弹窗'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: '请输入内容'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('取消'),
            ),
            TextButton(
              onPressed: () {
                // 在这里获取输入框中的文本
                String inputText = _textController.text;
                // 处理输入的内容
                // 例如，可以将输入的内容显示在控制台上
                print('------------------输入的内容是：$inputText');
                Navigator.of(context).pop();
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
  }

}


  