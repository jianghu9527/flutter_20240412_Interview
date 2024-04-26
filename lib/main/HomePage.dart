// import 'dart:html';

import 'package:flutter/material.dart';
 
import '../login/sign.dart';
import '../subview/CardWidget.dart';
import '../subview/Cropping.dart';
import '../subview/DataSave.dart';
import '../subview/DataSqliter.dart';
import '../subview/DebugActivity.dart';
import '../subview/Nagaland.dart';
import '../subview/Poitionwidget.dart';
import '../subview/StackView.dart';
import '../subview/WrapFlow.dart';
import '../subview/listviewview.dart';
import '../subview/TanChuang.dart';
import '../subview/viewpage/PageViewPage.dart';
import '../subview/viewpage/PageViewPage_pic.dart';
import '/subview/uitls_row.dart';
import '/config/path_data.dart';
import '/subview/util_dio.dart';
import '/login/login2/login_test01.dart';
import '../subview/SwitchAndCheckBoxTestRoute .dart';
import 'package:fluttertoast/fluttertoast.dart';



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

    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页",style: TextStyle(color: Colors.white),),
            centerTitle:true,
            // backgroundColor: Color.fromARGB(1, 5, 247, 38),
           backgroundColor:  Colors.blue,
          leading: null,
          automaticallyImplyLeading: false,
        ),
        body:  ListView.builder(
        itemCount: _initListViewString().length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
 

            children: <Widget>[
              ListTile(
                tileColor: const Color.fromARGB(255, 130, 255, 147), // Tile颜色
                selectedTileColor: Colors.yellow,
                  textColor: Colors.black87,
            //  backgroundColor: Color.fromARGB(1, 5, 247, 38),
            leading: Image.asset("images/signup/signup_page_9_profile.png"),
            title: Text("" + _initListViewString()[index]),
            subtitle: Text("点击到下一个界面${[index]}"),
            onTap: () {
                print("---------onTap----------${index}-------${_initListViewString()[index]}");
              detailMothor(_initListViewString()[index], context);
            },
             onLongPress: () {
                print("---------onLongPress----------${index}");
              }
              
            //  backgroundColor: Color.fromARGB(1, 5, 247, 38),
            // backgroundColor:  Colors.blue,
             
          ),

             Divider(
              height: 2,
              thickness: 1,
              color: Colors.black87,
            ),
            ],
          );


        })
      ),
    );
  }
 
 

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
 
}

void detailMothor(String namemethor, BuildContext context) {
  if (namemethor.isEmpty) {
    print("-------isEmpty----------namemethor---空----:$namemethor");
    return;
  }
  print("-----------------点击到详情界面---------------" + namemethor);
 Fluttertoast.showToast(msg: namemethor,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);

  switch (namemethor) {
    case path_dio:
      var route = MaterialPageRoute(builder: (context) => util_dio());
      Navigator.push(context, route);

      break;
    case path_login01v1:
      // var route = MaterialPageRoute(builder: (context) => login_test01());
      var route = MaterialPageRoute(builder: (context) => SignInPage()); 
      Navigator.push(context, route);
      break;
 case path_getx: 
       debugPrint("-----------------getx---------"); 
      var route = MaterialPageRoute(builder: (context) => SignInPage()); 
      Navigator.push(context, route);
      break;
       case path_toast: 
          debugPrint("-----------------path_toast----弹唱-----"); 
      var route = MaterialPageRoute(builder: (context) =>TanChuang()); 
      Navigator.push(context, route);
      break;

case path_Wrap_Flow:// 
         debugPrint("-----------------流式布局---------"); 
   var route = MaterialPageRoute(builder: (context) => WrapFlow()); 
      Navigator.push(context, route);

break;

    case path_row:
         debugPrint("-----------------path_row---------");
      var route = MaterialPageRoute(builder: (context) => UtilsRow());
      Navigator.push(context, route);
      break;
     case path_data_save:
     debugPrint("-----------------data_save---------");
      var route = MaterialPageRoute(builder: (context) => DataSave_preferences());
      Navigator.push(context, route);
      break;
    case path_viewpage:
      print("----------------path_viewpage-------轮播图---------");
      // var route = MaterialPageRoute(builder: (context) => PageViewPage());
      var route = MaterialPageRoute(builder: (context) => PageViewPage_pic());
      Navigator.push(context, route); 
      break;


      case path_DataSqliter:
      print("----------------path_DataSqliter-------数据库---------");
      // var route = MaterialPageRoute(builder: (context) => PageViewPage());
      var route = MaterialPageRoute(builder: (context) => DataSqliter());
      Navigator.push(context, route);
      break;
    case path_SingleChildScrollView:
      print("-----------------SingleChildScrollView-------------");
      var route =
          MaterialPageRoute(builder: (context) => SingleChildScrollView());
      Navigator.push(context, route);
      break;
    case path_caijian: //裁剪
      print("-----------------裁剪---------Cropping----");

      var route = MaterialPageRoute(
        builder: (context) => Cropping(),
      );
      Navigator.push(
        context,
        route,
      );

      break;

    case path_debugActivity: //debugactivity
      print("-----------------调试界面---------debugactivity----");

      var route = MaterialPageRoute(
        builder: (context) => DebugActivity(),
      );
      Navigator.push(
        context,
        route,
      );

      break;
    case path_Switch_check: //debugactivity
      print("-----------------单选开关和复选框-------------");

      var route = MaterialPageRoute(
        builder: (context) => SwitchAndCheckBoxTestRouteActivity(),
      );
      Navigator.push(
        context,
        route,
      );

      break;
    case path_Nagaland: //纳格兰项目
      print("-----------------纳格兰项目-------------");

      var route = MaterialPageRoute(
        builder: (context) => Nagaland(),
      );
      Navigator.push(
        context,
        route,
      );

      break;
    case path_Stack: //层叠布局
      print("-----------------层叠布局-------------");
      var route = MaterialPageRoute(
        builder: (context) => StackView(),
      );
      Navigator.push(
        context,
        route,
      );
      break;
    case path_postitionedWidget: //postitionedWidget层叠布局
      print("----------------postitionedWidget-层叠布局-------------");
      var route = MaterialPageRoute(
        builder: (context) => Poitionwidget(),
      );
      Navigator.push(
        context,
        route,
      );
      break;
    case path_CardWidget: //CardWidget卡片
      print("----------------CardWidget卡片--------------");
      var route = MaterialPageRoute(
        builder: (context) => CardWidget(),
      );
      Navigator.push(
        context,
        route,
      );
      break;

    case path_mlistview: //list列表
      print("-----------------list列表-------------");
      var route = MaterialPageRoute(
        builder: (context) => listviewview(),
      );
      Navigator.push(
        context,
        route,
      );

      break;

    default:
      print("-----------------没有匹配的数据-------------");

      break;
  }
}
