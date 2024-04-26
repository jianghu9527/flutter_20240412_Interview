import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter/widgets.dart';

import 'login/login.dart';
import 'subview/nagaland/nagaland_main.dart';




void main() {
  runApp(  MyAppLogin());
}


class MyAppLogin extends StatelessWidget {
  var ides = "5";
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fultter test ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(131, 131, 131, 1)),
      home: HomeText(),
      
    // RoutSelect(),
          routes:{
        "Main_nagaland": (context) => nagalandMain(),
        // "GesturePage":(context)=>GesturePage(),

      } ,
      
      // home: Scaffold(appBar:AppBar(title: Text("你好flutter"),
      // ),
      // body: Center(child: Text("你好flutter",
      // textDirection: TextDirection.ltr,
      // style: TextStyle(color: Color.fromARGB(244, 244, 124, 1),
      // fontSize: 50

      // ),
      // ),),
      // ),

      // routes: {
      //   "ProductDetail": (context) => ProductDetail(),
      //   "GesturePage": (context) => GesturePage(),
      // },

      //  routes: {
      //   "home": (context) => HomeText(),
      //   "Product": (context) => Product(),
      //   "ProductDetail": (context) => ProductDetail(),

      //  },
      //  initialRoute: "home",
      //  onUnknownRoute: (RouteSettings   settings) =>
      //   MaterialPageRoute(builder: (context)=> UnknowPage()
      //    ),

      //      onGenerateRoute: (RouteSettings  settings) {
      //       print("--------------当前路径${settings.name}");
      //      if (settings.name == '/') {
      //        return MaterialPageRoute(builder: (context) => HomeText());
      //        }
      //        if (settings.name == '/Product') {
      //            return MaterialPageRoute(builder: (context) => Product());
      //        }

      //         String  muil=settings.name.toString();
      //      var uri=   Uri.parse(muil);
      //     //  print("==${uri});
      //          print("----------Uri=$uri");

      //      if(uri.pathSegments.length==2 && uri.pathSegments.first=="Product"){
      //                 var id=uri.pathSegments[1];
      //          print("---------id=$id");
      //  return MaterialPageRoute(builder:  (context) => ProductDetail( id:id) );
      //        }
      //             return MaterialPageRoute(builder: ((context) => UnknowPage()));
      //      }
    );
  }


  // Widget  RoutSelect(){

  //    return  routes:{
  //       "ProductDetail": (context) => ProductDetail(),
  //       // "GesturePage":(context)=>GesturePage(),

  //     };


  // }
}