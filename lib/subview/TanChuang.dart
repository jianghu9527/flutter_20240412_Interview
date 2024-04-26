import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

/**
 * 弹窗多种
 * 多种弹窗_snackbar_defaultDilog_bottomSheet
 * 
 */
class TanChuang extends StatefulWidget {
  const TanChuang({super.key});

  @override
  State<TanChuang> createState() => _tanchuangState();
}

class _tanchuangState extends State<TanChuang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "弹窗",
          style: TextStyle(color: Colors.blueGrey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      // body: Center(child: Text("弹窗", style: TextStyle(fontSize: 30) )
      body: Column(
       children: <Widget>[
         TextButton(onPressed: (){

 Fluttertoast.showToast(msg: "Fluttertoast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);

         }, child: Text("弹窗1")),

         TextButton(onPressed: (){
print("--------------SnackBar-------context---------");
 var  msnackbar=SnackBar(content: Text("SnackBar"),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 2),
      
      );

// Scaffold.of(context).showBottomSheet
      // showBottomSheet(context: context, builder: builder);
      ScaffoldMessenger.of(context).showSnackBar(msnackbar);

         }, child: Text("弹窗_SnackBar")),

         TextButton(onPressed: (){

                _showDialog(context);
                print("--------------弹窗3-------context---------"); 
             
         }, child: Text("弹窗_AlertDialog")),

         TextButton(onPressed: (){

                BottomSheet();
                print("--------------弹窗3-------BottomSheet---------");

         }, child: Text("弹窗3_BottomSheet")),
           
       
  

       ],

         
       
      ),
    );
  }



void BottomSheet(){
    showModalBottomSheet(
      context: context,
       isScrollControlled:false,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      builder: (BuildContext context) {
        return Container(
        	height:50,//对话框高度就是此高度
          child: Center(child: Text("居中文字")),
        );
      });

}






  // 显示对话框
  void _showDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('标题'),
          content: Text('这是一个默认对话框的内容'),
          actions: <Widget>[
            TextButton(
              child: Text('关闭'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

       TextButton(
              child: Text('打开'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),




          ],
        );
      },
    );
  }


}
