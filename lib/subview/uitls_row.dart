

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/**
 * 对其方式：MainAxisAlignment.spaceEvenly
 * 
 * 
 * 
 * 
 */
class UtilsRow extends StatefulWidget {
  const UtilsRow({super.key});

  @override
  State<UtilsRow> createState() => _UtilsRowState();
}

class _UtilsRowState extends State<UtilsRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UtilsRow'),centerTitle:true,backgroundColor:Colors.red,
        leading: null,

      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//center
        children:[
       ElevatedButton(onPressed: (){}, child:Text("buttom2") ),
          Text("buttom",style: TextStyle(color: Colors.blueAccent),),
              Text('UtilsRow',style: TextStyle(color: Color.fromARGB(255, 15, 196, 69)),),

        ] 
      ),
      ) 




    );
  }
}