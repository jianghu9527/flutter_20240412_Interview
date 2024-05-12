import 'package:get/get.dart';

 class CounterController  extends       GetxController{


  RxInt counter = 0.obs;

  // 以下为周期函数
  @override
  
  void onInit() {
    print('onInit');
    super.onInit();
  }

  @override
  void onClose() {
    // 控制器绑定在路由上的话，路由销毁则触发
    print('onClose');
    super.onClose();
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  void inc() {
    counter.value++;
    update(); // 调用obx更新数据，不然数据不会更新
  }

  void dec() {
    counter.value--;
    update();
  }
 }