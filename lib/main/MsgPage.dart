import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  const MsgPage({Key? key}) : super(key: key);

  @override
  State<MsgPage> createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  List<String> _initListViewPage() {
    List<String> lists = [];
    for (var i = 0; i < 30; i++) {
      lists.add("item:===>>>>$i");
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          "消息",
          style: TextStyle(fontSize: 20.0, color: Colors.black87),
        ),
        centerTitle: true,
        leading: null,
      ),
      body: ListView.builder(
        itemCount: 20, // 列表项的数量
        itemBuilder: (context, index) {
          return Column(children: <Widget>[
            ListTile(
              leading: Icon(Icons.star), // 列表项前面的图标
              title: Text('Item $index',
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 218, 27),
                  )), // 列表项的标题
              subtitle: Text(
                '这是第 $index 个项目',
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 243, 240),
                ),
              ), // 列表项的副标题
              onTap: () {
                // 当用户点击列表项时触发的操作
                print('----------------------点击了第 $index 个项目');

          

              },
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[300],
            ),
          ]);
          // Divider(),
        },
      ),

      //
      //
      //
      // Column(
      //   children: [
      //     Flexible(
      //       child: ListView.builder(
      //         scrollDirection: Axis.vertical,
      //         itemCount: _initListViewPage().length,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Container(
      //             color: Color.fromARGB(255, 204, 73, 73),
      //             margin: EdgeInsets.all(1.0),
      //             padding: EdgeInsets.all(20),
      //             child: Text(
      //               "item:$index",
      //               style: TextStyle(fontSize: 20.0, color: Colors.black87),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
