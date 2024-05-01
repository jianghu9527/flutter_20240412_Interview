import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 生命周期
 * 1.initState
 * 2.createState
 * 3.didChangeDependencies
 * 4.didUpdateWidget
 * 5.dispose
 * 
 * 
 * 构建（Build）、更新（Update）和销毁（Dispose）
 * 
 * 
 */
class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State<lifecycle> createState() {
    print(
        "-------------------------createState--------当Widget第一次被插入到Widget tree的时候被调用。它的返回值是定义Widget状态的类的一个实例。--");
    return _lifecycleState();
  }
}

class _lifecycleState extends State<lifecycle> {
  String buttonText = '点击修改界面'; // 初始按钮文本
  bool _isbool = true;

  void _ChangeButtomText() {
    print("--------------------------_ChangeButtomText-----------------");
    setState(() {
      buttonText = "Button_Clicked";
      _isbool = !_isbool;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(
        "-------------------------build---------每次setState被调用，或者当依赖的InheritedWidgets发生变化时，build方法都会被调用。---");
    return getTable();
  }

  Widget getTable() {
    print("---------------build-----------getTable----------Widget-----------");
    return Scaffold(
      // mainAxisAlignment:MainAxisAlignment.center,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "生命周期",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("生命周期"),

            SizedBox(
              height: 20,
            ),

            Visibility(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>lifecycle()));
                    Navigator.of(context).pop();
                    print("---------------测试周期------ElevatedButton-------");
                  },
                  child: Text("跳转")),
              visible: _isbool,
            ),



            SizedBox(
              height: 20,
            ),




            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>lifecycle()));
                  // Navigator.of(context).pop();
                  print("---------------测试周期---------2----");
                  _ChangeButtomText();
                },
                child: Text("生命周期:" + buttonText)),

            // Expanded(
            //   child: Text("123"),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(
        "-------------------------initState--------在createState之后立即调用。这是最适合进行一次性初始化（如设置状态，订阅流等）的地方--");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print(
        "--------------------------didChangeDependencies--------------当该Widget依赖的InheritedWidgets发生变化时调用-------");
  }

  @override
  void didUpdateWidget(covariant lifecycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print(
        "--------------------------didUpdateWidget-------------当Widget的配置（widget configuration）更新的时候调用。---------");
  }

  @override
  void dispose() {
    super.dispose();

    print(
        "---------------------dispose-----------------当Widget被永久地从Widget tree中移除的时候调用。------------------------");
  }
}
