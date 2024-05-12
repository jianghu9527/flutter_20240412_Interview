import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter/widgets.dart';

import 'login/login.dart';
import 'subview/nagaland/nagaland_main.dart';
import 'subview/rtc/RTC_main.dart';
import 'subview/rtc/lanch_RTC.dart';




void main() {
  runApp(  MyAppLogin());  
    // runApp(RTC_main());
}


class MyAppLogin extends StatelessWidget {
  var ides = "5";
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fultter启动 ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(131, 131, 131, 1)),
      home: HomeText(),
      // home: LanchRTC(),
      
    // RoutSelect(),
          routes:{
        "Main_nagaland": (context) => nagalandMain(),
        // "GesturePage":(context)=>GesturePage(),

      } ,
       

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



 
}