import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/**
 * 层叠布局
 */
class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {


     var stack=Stack(
      alignment:  const  FractionalOffset(0.5, 0.9),//指定未定位或部分定位widget的对齐方式
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQBQEvHiGJU2ILFPHAPrdhsXb3aEzkZEBff--VC9GVBg&s"),
            radius: 100.0,
          ),
          Container(  
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            padding: EdgeInsets.all(5.0),
            child: Text(
              "主持人：jack",
              style: TextStyle(
              fontSize: 20.0,
              color: Colors.redAccent
            )
          )
      ) ],
     );
 
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: null,
      body: Center(
        child: stack,
      ),
    );
    // return Stack(
    //   children: [
    //     Text("层叠布局"),
    //   ],
    // );

//     return ConstrainedBox(
//   constraints: BoxConstraints.expand(),
//   child: Stack(
//     alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
 
//     // fit: StackFit.expand, //未定位widget占满Stack整个空间
//     children: <Widget>[
//       Container(
//         child: Text("Hello world",style: TextStyle(color: Colors.white)),
//         color: Colors.red,
//       ),
//       Positioned(
//         left: 18.0,
//         child: Text("I am Jack"),
//       ),
//       Positioned(
//         top: 18.0,
//         child: Text("Your friend"),
//       )      ,
//        Text("层叠布局"),  
//     ],
//   ),
// );
  }
}