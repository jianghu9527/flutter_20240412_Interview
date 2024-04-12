


import 'package:flutter/material.dart';

class sigInlog extends StatelessWidget {
  const sigInlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Row(    
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
          FlutterLogo(
            size: 64,
          ),
          
          Text("诗文库",style: TextStyle(fontSize: 48,color: Colors.black87),),


        ],)
   
      ),
    );
  }
}