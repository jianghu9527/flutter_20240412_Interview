import 'package:flutter/material.dart';


/**
 * 裁剪
 * 
 * https://www.bilibili.com/video/BV15u4y1L7uN/?spm_id_from=333.788&vd_source=83fdbd83d34aa2af54f70627e76de772
 * https://www.bilibili.com/video/BV1NZ4y1G7VX/?spm_id_from=333.337.search-card.all.click&vd_source=83fdbd83d34aa2af54f70627e76de772
 * 
 */
class Cropping extends StatefulWidget {
  const Cropping({super.key});

  @override
  State<Cropping> createState() => _CroppingState();
}

class _CroppingState extends State<Cropping> {
  @override
  Widget build(BuildContext context) {


      // 裁剪
    // ClipRRect(
    //   borderRadius: BorderRadius.circular(10),
    //   child: Image.asset("assets/images/1.jpg",fit: BoxFit.cover,),
    // ),
    var avater=  Image.asset("image/80.jpg",fit: BoxFit.cover,width: 200,height: 100,);
    // Image.asset("image/80.jpg",fit: BoxFit.cover,),
    // Image.asset("image/80.jpg",fit: BoxFit.cover,),
    // Image.asset("image/80.jpg",fit: BoxFit.cover,),
    // Image.asset("image/80.jpg",fit: BoxFit.cover,),

    return MaterialApp(
      title:"裁剪",
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title:Text( "裁剪1",  ),centerTitle: true,leading: null,
      ),

  body: Column(
    children: [avater],
  ),


    ),

    );
  }
}