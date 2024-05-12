import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/**
 * 下拉刷新组件
 * 参考：https://juejin.cn/post/68449037860608115202
 */
class RefreshView extends StatefulWidget {
  const RefreshView({super.key});

  @override
  State<RefreshView> createState() => _RefreshViewState();
}

class _RefreshViewState extends State<RefreshView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('下拉刷新组件'),
        ),
        body:  RefreshIndicator(
          onRefresh: () async {
            // 模拟刷新操作
            await Future.delayed(const Duration(seconds: 2));
          },
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),




        
      ),
    );
  }
}