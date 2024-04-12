import 'package:flutter/material.dart';
import '/config/path_data.dart';
import '/subview/util_dio.dart';
import '/login/login2/login_test01.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _initListView() {
    List<Widget> lists = [];

    for (var i = 0; i < 5; i++) {
      lists.add(ListTile(
        title: Text("列表$i"),
      ));
    }
    return lists;
  }

  List<String> _initListViewString() {
    List<String> lists = [];
    // for (var i = 0; i < 10; i++) {
    //   lists.add("item:$i");
    // }
    path_name.forEach((element) {
      lists.add(element);
    });

    return lists;
  }

  @override
  Widget build(BuildContext context) {
    // return Container(child:Text("HomePage"));
    // return ListView(
    //   children: _initListView(),
    // );

    return ListView.builder(
        itemCount: _initListViewString().length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("images/signup/signup_page_9_profile.png"),
            title: Text("" + _initListViewString()[index]),
            subtitle: Text("点击到下一个界面"),
            onTap: () {
              detailMothor(_initListViewString()[index], context);
            },
          );
        });
  }
// return Container(
//     color: Color.fromARGB(255, 63, 63, 53),
//           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//   child: Column(

//     children:<Widget> [
//               FlutterLogo(size: 30,),
//               Image.asset("images/signup/signup_page_9_profile.png"),

//                ],

//   ),
// );
  //     ListTile(
  //   // leading: Image.network( "https://www.itying.com/images/flutter/7.png",scale: 1.0,fit: BoxFit.cover,
  //   // errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
  //   //,repeat: ImageRepeat.repeatX,  ,height: 150,width: 150
  //    leading: Image.network( "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375",scale: 1.0,fit: BoxFit.cover,
  //   errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
  //   title: Text("String:"+_initListViewString()[index]),
  //   subtitle: Text("author"),
  // ),

// ListView.builder(
//         itemCount: _initListViewString().length,
//         itemBuilder: (BuildContext context, int index) {
//              leading: Image.network( "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375",
//              scale: 1.0,fit: BoxFit.cover,
//              errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),);
//             title: Text("String:"+_initListViewString()[index]);
//             subtitle: Text("author");

//         }
// ),

// ListTile(
//           //   // leading: Image.network( "https://www.itying.com/images/flutter/7.png",scale: 1.0,fit: BoxFit.cover,
//           //   // errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
//           //   //,repeat: ImageRepeat.repeatX,  ,height: 150,width: 150
//              leading: Image.network( "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375",scale: 1.0,fit: BoxFit.cover,
//              errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
//               title: Text("String:"+_initListViewString()[index]),
//              subtitle: Text("author"),

//          ),

  // return ListTile(
  //   // leading: Image.network( "https://www.itying.com/images/flutter/7.png",scale: 1.0,fit: BoxFit.cover,
  //   // errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
  //   //,repeat: ImageRepeat.repeatX,  ,height: 150,width: 150
  //    leading: Image.network( "https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=375",scale: 1.0,fit: BoxFit.cover,
  //   errorBuilder: (ctx,stack,stacktrace)=>Image.asset("assets/images/feed/feed2_image1.png"),),
  //   title: Text("String:"+_initListViewString()[index]),
  //   subtitle: Text("author"),

  // );
  // });
}

void detailMothor(String namemethor, BuildContext context) {


  if (namemethor.isEmpty) {
    print("-------isEmpty----------namemethor---空----:$namemethor");
    return;
  }
  print("-----------------点击到详情界面---------------" + namemethor);


  switch (namemethor) {
    case "dio网络请求":
      var route = MaterialPageRoute(builder: (context) => util_dio());
      Navigator.push(context, route);

      break;
      case "login01登录V1":
      var route = MaterialPageRoute(builder: (context) => login_test01());
      Navigator.push(context, route);
      break;


  }
}
