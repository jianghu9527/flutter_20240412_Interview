import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

      var  card=new Card(
          // color: Colors.green,
          // margin: EdgeInsets.only(top:2,bottom: 2),
          // shadowColor: Colors.redAccent,
          // elevation: 10,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        // child: Container(
        //   width: 300,
        //   height: 200,
        //   child: Text("Card Widget",style: TextStyle(fontSize: 20,color: Colors.white),),
        // ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("主标题",style: TextStyle(fontSize: 20,color: Colors.black),),
              subtitle: Text("我是副标题 6666"),
            ),
            //Divider(),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("二级主标题",style: TextStyle(fontSize: 20,color: Colors.red),),
              subtitle: Text("我是二级副标题 9999"),
            ),
            Divider(),


            //Divider(
       
          ],
        ),
      );



  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: "CardWidget",
    //   debugShowCheckedModeBanner: false,
    //    home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("CardWidget"),centerTitle: true, leading: null,automaticallyImplyLeading: false,
    //     ),
    //          body: Center(
    //           child: card,
    //          ),
    //    ),
    // );

return ListView.builder(itemCount: 5,
itemBuilder: (BuildContext context,int index){
  // return card;
    return Card(
      // color: Colors.green,
      margin: EdgeInsets.all(10),
      // shadowColor: Colors.redAccent,
      elevation: 20,//设置卡的阴影深度
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),//设置卡片圆角
     // child: Container(
     //   width: 300,
     //   height: 200,

     child:  Column(
      children: [
        AspectRatio(//设置图片的宽高比例
          aspectRatio: 20/9,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL9c5TntrIr6uScraF4j8nhqa_N5NmLiXuL6H1wmBgLQ&s",
            fit: BoxFit.cover,),
        ),
       ListTile(
         leading:ClipRRect(//设置圆形头像  ClipOval
         borderRadius: BorderRadius.circular(10),
           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcf0WOBpNUvJO0yya_tPq7dEM5g9bqOcAVJM2D9roDxQ&s",
           fit: BoxFit.cover,   height: 60,width: 60,),
         ),
         title: Text("一级标题",style: TextStyle(fontSize: 20,color: Colors.black),),
         subtitle: Text("一级副标题"),
       ),
      
       Divider(),
       ListTile(
        //  leading: Icon(Icons.account_box),
//         leading: FadeInImage.assetNetwork(    输入框 那种   生成框架  视频  
//   placeholder: 'images/nagaland_icon.png',
//   image: 'https://pic1.zhimg.com/v2-7fab628481a26f025188b095b5cfafbc.jpg',
//   width: 50,
//   height: 50
// ),
           leading:  CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://pic1.zhimg.com/v2-7fab628481a26f025188b095b5cfafbc.jpg"),
           ),
         title: Text("二级主标题",style: TextStyle(fontSize: 20,color: Colors.red),),
         subtitle: Text("我是二级副标题"),
       ),
       Divider(),
       

      ],
     ),
    );



},);




  }
}