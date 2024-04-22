import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * Poitionwidget层叠布局
 */
class Poitionwidget extends StatefulWidget {
  const Poitionwidget({super.key});

  @override
  State<Poitionwidget> createState() => _StackViewState();
}

class _StackViewState extends State<Poitionwidget> {
  var stack = Stack(
    // alignment: const FractionalOffset(0.5, 0.9), //指定未定位或部分定位widget的对齐方式
    children: <Widget>[
      CircleAvatar(
        backgroundImage:
            NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJTnTecbZieuMvucpqeRm-5BKUuJ4S5y9yqFn_MZs53w&s"),
             radius: 100.0,
      ),
      // Container(
      //     decoration: BoxDecoration(
      //       color: Colors.black45,
      //     ),
      //     padding: EdgeInsets.all(5.0),
      //     child: Text("主持人：jack",
      //         style: TextStyle(fontSize: 20.0, color: Colors.redAccent))
      //         )

          Positioned(
            left: 80.0,
             bottom: 10,
            child: Text("jack",
                style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
          ),
          Positioned(
            right: 10.0,
            top: 20,
            child: Text("倒计时：",
                style: TextStyle(fontSize: 10.0, color: Colors.blue)),
          ),

        
             


    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color.fromARGB(255, 4, 8, 243),
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
