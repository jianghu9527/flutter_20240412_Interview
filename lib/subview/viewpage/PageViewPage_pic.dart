



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageViewPage_pic extends StatefulWidget {
  const PageViewPage_pic({super.key});

  @override
  State<PageViewPage_pic> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage_pic> {
  List<Widget> pageList = [];

  @override
  void initState() {
    super.initState();

    List listData = [
      {
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/4.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/5.png',
      }
    ];

    for (var i = 0; i < listData.length; i++) {
      pageList.add(PicturePage(
        url: listData[i]["imageUrl"],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("无线轮播"),
      ),
      body: ListView(
        children: [
          Swiper(pageList: pageList),
        ],
      ),
    );
  }
}

//Swiper 组件
class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<Widget> pageList;

  const Swiper(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.pageList});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    const timeOut = Duration(seconds: 3);
    timer = Timer.periodic(timeOut, (timer) {
      //跳转
      _pageController.animateToPage(
          (_currentPageIndex + 1) % (widget.pageList.length),
          curve: Curves.linear,
          duration: const Duration(milliseconds: 200));
    });
  }

  @override
  void dispose() {
    super.dispose();

    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _currentPageIndex = value % (widget.pageList.length);
              });
            },
            itemCount: 10000,
            itemBuilder: (context, index) =>
                widget.pageList[index % (widget.pageList.length)],
          ),
        ),
        Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.pageList.length, (i) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _currentPageIndex == i ? Colors.blue : Colors.grey),
                );
              }).toList(),
            )),
      ],
    );
  }
}

///PicturePage
class PicturePage extends StatefulWidget {
  final String url;
  final double width;
  final double height;
  const PicturePage(
      {super.key,
      required this.url,
      this.width = double.infinity,
      this.height = 200});

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Image.network(widget.url, fit: BoxFit.cover),
    );
  }
}