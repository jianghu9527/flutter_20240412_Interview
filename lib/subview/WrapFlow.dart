import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class WrapFlow extends StatefulWidget {
  const WrapFlow({super.key});

  @override
  State<WrapFlow> createState() => _WrapFlowState();
}

class _WrapFlowState extends State<WrapFlow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
 
        
        children: <Widget>[
          Text("流布局（Wrap）是Flutter中的一种常见布局，它可以让子组件按照一定的方向（水平或垂直）进行排列。流布局可以自动换行，并且可以设置子组件之间的间距。流布局常用于创建灵活的布局，例如导航栏、标签页等。",style: TextStyle(fontSize:20,color: Colors.black87,backgroundColor: Colors.yellow),),
          SizedBox(height: 30,),
          

              Wrap(
     
   spacing: 8.0, // 主轴(水平)方向间距
   runSpacing: 4.0, // 纵轴（垂直）方向间距
   alignment: WrapAlignment.center, //沿主轴方向居中
   children: <Widget>[
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
       label: Text('Hamilton'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
       label: Text('Lafayette'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
       label: Text('Mulligan'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
       label: Text('Laurens'),
     ),
   ],
)

 





        ],
      ),

      
          

     
      
    );
  }
}