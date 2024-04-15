import 'package:flutter/material.dart';



/**
 * 测试数据 
 * https://jsonplaceholder.typicode.com/posts/1
 * 
 * 
 * 
 */
class MsgPage extends StatefulWidget {
  const MsgPage({super.key});

  @override
  State<MsgPage> createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {

  
  List<String> _initListViewPage() {
    List<String> lists = [];
    for (var i = 0; i < 30; i++) {
      lists.add("item:===>>>>$i");
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      // appBar: AppBar(title: Text("Rn语言"),),
      appBar: null,
      body: Column(
        children: [
          Container(
            height: 100,
            child: Center(
              child: Text(
                "界面消息",
                style: TextStyle(fontSize: 40.0, color: Colors.black87),
              ),
              
          //     Container(
          //   child: Image.asset("images/signup/signup_page_9_profile.png"),
          // ),
            ),
       
          ),
   
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  // controller: ScrollController(),
                //  shrinkWrap: true,
                padding: EdgeInsets.only(
                    left: 30.0, top: 30.0, right: 30.0, bottom: 30.0),
              
                itemCount: _initListViewPage().length,
                itemBuilder: (BuildContext context, int index) {
                  //  leading: Image.network( "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375",
                  //  scale: 1.0,fit: BoxFit.cover,
                  //  errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),);
                  // title: Text("String:"+_initListViewPage()[index]);
                  // subtitle: Text("author");

                  return Container(
                    color: Color.fromARGB(255, 204, 73, 73),
                    margin: EdgeInsets.all(1.0),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "item:$index",
                      style: TextStyle(fontSize: 20.0, color: Colors.black87),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
