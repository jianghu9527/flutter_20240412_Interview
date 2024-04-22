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
              title: Text("My Photo",style: TextStyle(fontSize: 20,color: Colors.black),),
              subtitle: Text("This is my 6666"),
            ),
            //Divider(),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("JSPang",style: TextStyle(fontSize: 20,color: Colors.red),),
              subtitle: Text("This is my 9999"),
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
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL9c5TntrIr6uScraF4j8nhqa_N5NmLiXuL6H1wmBgLQ&s",fit: BoxFit.cover,),
        ),
       ListTile(
         leading:ClipOval(//设置圆形头像
           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK2NrLALCwUlhDB28a4u0NpReYgC4PCZUDUFOI8OST4A&s",
           fit: BoxFit.cover,   height: 60,width: 60,),
         ),
         title: Text("My tupian",style: TextStyle(fontSize: 20,color: Colors.black),),
         subtitle: Text("This is my 666"),
       ),
      
       Divider(),
       ListTile(
         leading: Icon(Icons.account_box),
         title: Text("JSPang",style: TextStyle(fontSize: 20,color: Colors.red),),
         subtitle: Text("This is my 9999"),
       ),
       Divider(),
       

      ],
     ),
    );



},);




  }
}