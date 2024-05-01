
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



/**
 * 
 * https://www.bilibili.com/video/BV1Fk4y1C781/?spm_id_from=333.337.search-card.all.click&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 
 * 
 * 属性
 * https://www.cnblogs.com/joe235/p/11711653.html
 */
class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField 讲解"),
      ),
 body: Center(
  child: SizedBox(
    height: 200,
    width: 200,
    child: Container(
      color: Colors.grey,
      alignment: Alignment(0, 0),
      // child: TextField(
      //    decoration: InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: '输入五位房间号码',
      //         ),
      //   maxLength: 10,
      //   onChanged: (value) {
      //     print("--------------onChanged------数据:${value}---");
      //   }, 
      // ),



 
 child: MyCustomForm(),


    ),
  ),
 ),


    );
  }
}





class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}
 
class _MyCustomFormState extends State<MyCustomForm> {
  // 用于保存用户输入的数据
  final _formKey = GlobalKey<FormState>();
 late String _value;
 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              // 当TextField的值改变时，更新_value
              setState(() {
                _value = value;
              });
            },
          ),

          SizedBox(height: 20,),
          ElevatedButton(
            style: ButtonStyle(shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
            
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              // 验证并提交表单
              if (_formKey.currentState!.validate()) {
                // 处理用户输入的值
                print('--------------输入的值是：$_value');
              }
            },
            child: Text('提交',style: TextStyle(fontSize: 16,color: Colors.white),),
          ),
        ],
      ),
    );
  }
}