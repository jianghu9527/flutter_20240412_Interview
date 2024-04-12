import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {

return MaterialApp(
  home: Scaffold(
    appBar: null,
    backgroundColor: Colors.blue,
    body: 
  Center(
    child: Container(
      color: Colors.white,
       child: Text("MemberPage",style: TextStyle(fontSize: 30.0,color: Colors.black87),),
    ),
  )
  )
);
  //   return Container(
  //     child: Text("MemberPage")
       
   
  //     );
  }
}
