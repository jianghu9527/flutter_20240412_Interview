 

import 'dart:math';

import 'package:flutter/material.dart';


/**
 * 冒泡界面
 * https://www.bilibili.com/video/BV1Nt4y1v7mc/?spm_id_from=333.337.search-card.all.click&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 
 */
class login_test01 extends StatefulWidget {
  const login_test01({super.key});

  @override
  State<login_test01> createState() => _login_test01State();
}


Color getRandomWithColor(Random random){
//   int a=  random.nextInt(200);
//   print(a);
//   return Color.fromARGB(255, a, a, a); 

       int a=  random.nextInt(200);
       return Color.fromARGB(a, 255,255, 255);

}


class _login_test01State extends State<login_test01> {

//创建一个结合来保存气泡
List<BobbleBean> _list=[];
//随机数
Random  _random=new Random(DateTime.now().microsecondsSinceEpoch);
//设置随机的运动速度
double _maxSpeed=1.0;
//设置最大的半径；
double _maxRadius=100.0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

      print("----------------login_test01------------");

    for (var i = 0; i < 20; i++) {
      BobbleBean bean=new BobbleBean();
      // 获取随机透明的白色
      bean.color=  getRandomWithColor(_random);
      //设置位置 先来一个默认的绘制的时候再修改
      bean.postion=Offset(-1, -1);
      bean.speed=_random.nextDouble()*_maxSpeed;
      bean.theta=_random.nextDouble()*2*pi;
      bean.radius=_random.nextDouble()*100;
      _list.add(bean);
    }

 
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity, 
        // child: Text("登录",style: TextStyle(fontSize: 20,color: Colors.white10),),
        child: Stack(
          children: [
            buildBackGround(),
            //建立背景
            buildBobbleWidget(context),
            // 气泡
            //高斯模糊
            //输入区域


          ],
        ),

      ),





    );
  }
  
  buildBackGround() {

    return Container(
      decoration: BoxDecoration(
        //渐变的颜色组
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.lightBlueAccent.withOpacity(0.3),
              Colors.lightBlue.withOpacity(0.3),
                Colors.blue.withOpacity(0.3)

        ])
      ),
    );
  }
  

  buildBobbleWidget(BuildContext context) { 
    return CustomPaint(
      size:MediaQuery.of(context).size,
      painter: CustomMyPainter(list: _list,random:  _random),
    );
  } 

}
class CustomMyPainter extends CustomPainter {

List<BobbleBean> list=[];
  Random random=new Random();

  CustomMyPainter({list,random} ) ;
 
 Paint _paint=new Paint()..isAntiAlias=true;
 


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    //画布
    //画笔
   list.forEach((element) {
    Offset newoffset=calculateXy(element.speed,element.theta);

        double dx=newoffset.dx+element.postion.dx;
        double dy=newoffset.dy+element.postion.dy;
        if(dx<0||dx>size.width){
          // element.postion=Offset(-1, -1);
          dx=random.nextDouble()*size.width; 
          // element.postion=Offset(dx, dy);
        } 

      if(dy<0||dy>size.height){
        dy=random.nextDouble()*size.height;
      } 
      element.postion=Offset(dx, dy);
  });
//绘制
  list.forEach((element) {
      _paint.color=element.color; 
      canvas.drawCircle(element.postion, element.radius, _paint);
    });

  } 
    


    @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
  Offset calculateXy(double speed, double theta) {
    return Offset(speed*cos(theta), speed*sin(theta));
  } 
    }
  
 

class  BobbleBean{

  //位置
 late Offset postion;
//颜色
late Color color;
//运动速度;
late double speed;
//运动角度
late double theta;
//半径
late double radius;
//
  
}



