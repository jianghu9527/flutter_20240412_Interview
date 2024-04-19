import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';



/**
 * @author: haha
 * @date: 2023/5/16
 * @description:
 * 
 * 封装请求工具
 * 
 */
class HttpUtil {
   


   static void  getHttp({url,onCallBack}) async {

      Response   response = await Dio().get(url);
      onCallBack(response.data);
  
      var  mHeaders =  response.headers;
      mHeaders.add("type", "android");
    

   }
}