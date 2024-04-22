import 'dart:html';

import 'package:flutter/material.dart';
import '../subview/CardWidget.dart';
import '../subview/Cropping.dart';
import '../subview/DebugActivity.dart';
import '../subview/Nagaland.dart';
import '../subview/Poitionwidget.dart';
import '../subview/StackView.dart';
import '../subview/listviewview.dart';
import '/subview/uitls_row.dart';
import '/config/path_data.dart';
import '/subview/util_dio.dart';
import '/login/login2/login_test01.dart';
import '../subview/SwitchAndCheckBoxTestRoute .dart';

 




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
     case path_row:
         var route = MaterialPageRoute(builder: (context) => UtilsRow());
      Navigator.push(context, route);
     break; 
     case  path_SingleChildScrollView:
        print("-----------------SingleChildScrollView-------------");
    var route = MaterialPageRoute(builder: (context) => SingleChildScrollView());
      Navigator.push(context, route);
         break; 
        case path_caijian://裁剪
      print("-----------------裁剪---------Cropping----");

    var route = MaterialPageRoute(builder: (context) => Cropping(),);
      Navigator.push(context, route,);

      break;

    case path_debugActivity://debugactivity
      print("-----------------调试界面---------debugactivity----");

      var route = MaterialPageRoute(builder: (context) => DebugActivity(),);
      Navigator.push(context, route,);

      break;
    case path_Switch_check://debugactivity
      print("-----------------单选开关和复选框-------------");

      var route = MaterialPageRoute(builder: (context) => SwitchAndCheckBoxTestRouteActivity(),);
      Navigator.push(context, route,);

      break;
    case path_Nagaland://纳格兰项目
      print("-----------------纳格兰项目-------------");

      var route = MaterialPageRoute(builder: (context) => Nagaland(),);
      Navigator.push(context, route,);

      break;
    case path_Stack://层叠布局
      print("-----------------层叠布局-------------");
      var route = MaterialPageRoute(builder: (context) => StackView(),);
      Navigator.push(context, route,);
      break;
    case path_postitionedWidget://postitionedWidget层叠布局
      print("----------------postitionedWidget-层叠布局-------------");
      var route = MaterialPageRoute(builder: (context) => Poitionwidget(),);
      Navigator.push(context, route,);
      break;
    case path_CardWidget://CardWidget卡片
      print("----------------CardWidget卡片--------------");
      var route = MaterialPageRoute(builder: (context) => CardWidget(),);
      Navigator.push(context, route,);
      break;


    case path_mlistview://list列表
      print("-----------------list列表-------------");

      var route = MaterialPageRoute(builder: (context) => listviewview(),);
      Navigator.push(context, route,);

      break;





   default:
   print("-----------------没有匹配的数据-------------");

   break;
          
   


  }
}
