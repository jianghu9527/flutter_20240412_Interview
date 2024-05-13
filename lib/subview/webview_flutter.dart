



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Autogenerated.dart';
 
 
 
class WebViewflutter extends StatelessWidget  {
  final Autogenerated Autog; 
   WebViewflutter({required this.Autog });
 
    WebViewController controller=WebViewController();

@override
void initState() {

 controller  
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel('Report', onMessageReceived: (message) {
       
      })
      ..loadHtmlString(Autog.seturl!);

      
 
}

  @override
  Widget build(BuildContext context) {

     var  addressuri=Autog.seturl;
    print("----------------------addressuri:${addressuri}---------");

//  var   controller = WebViewController()
//   // ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   // ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//     NavigationDelegate(
//       onProgress: (int progress) {
//         // Update loading bar.
//       },
//       onPageStarted: (String url) {},
//       onPageFinished: (String url) {},
//       onWebResourceError: (WebResourceError error) {},
//       onNavigationRequest: (NavigationRequest request) {
//         // if (request.url.startsWith(addressuri)) {
//         //   return NavigationDecision.prevent;
//         // }
//         return NavigationDecision.navigate;
//       },
//     ),
//   )
//   ..loadRequest(Uri.parse(addressuri!));
  

    //   return Scaffold(
    //   appBar: AppBar(
    //     title: Text('WebView'),
    //   ),
    //   body: WebViewWidget(controller: controller  ),
    // );



 if (WebViewPlatform.instance != null) {

      return     Scaffold(
        appBar: AppBar(),
         body: Column(

           children: [
        SizedBox(height: MediaQuery.of(context).size.height, child: WebViewWidget(controller: controller)),
       
      ],
 
    
      ),
      );

 }else{

return Center(
  child: Text("WebView not supported"),
);


 }



 
}
 
 
 
// class _WebViewPageState extends State<StatefulWidget> {
 

//   final Autogenerated Autog; 
//    _WebViewPageState(Autogenerated autog,  {required this.Autog });

   
//   final Completer<WebViewController> _controller =
//       Completer<WebViewController>();
 
//   @override
//   Widget build(BuildContext context) {



 
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WebView'),
//       ),
//       body: WebViewWidget(controller: controller  ),
//     );
//   }
}