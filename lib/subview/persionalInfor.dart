import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * 个人中心
 * 
 * https://www.bilibili.com/video/BV1ut421t7UA/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 
 */
class persionalInfor extends StatefulWidget {
  const persionalInfor({super.key});

  @override
  State<persionalInfor> createState() => _persionalInforState();
}

class _persionalInforState extends State<persionalInfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("个人中心 ",style: TextStyle(color: Colors.white),),
//  backgroundColor: Color.fromARGB(202, 24, 23, 23),
      backgroundColor: Color.fromARGB(202, 24, 23, 23),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(202, 24, 23, 23),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/feed11-header.png"),
                  radius: 50,
                ),
              ),
              Divider(
                height: 50,
                color: Colors.green[400],
              ),
              Text(
                "姓名",
                style: TextStyle(
                    color: Colors.green[400], fontSize: 16, letterSpacing: 3),
              ),
              Text(
                "西门吹雪",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "粉丝数量",
                style: TextStyle(
                    color: Colors.green[400], fontSize: 16, letterSpacing: 3),
              ),
              Text(
                "16720",  
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "5342232@qq.com",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ), 
                ],
              ),

                  SizedBox(
                height: 10,
              ),
                        Row(
                children: [
                  Icon(
                    Icons.anchor,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "QQ:38593846",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ), 
                ],
              )


            ],
          ),
        ));
  }
}
