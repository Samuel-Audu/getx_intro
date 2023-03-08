import 'package:get/get.dart';
import 'package:getx_test/controllers/list_controller.dart';
import 'package:getx_test/controllers/tap_controller.dart';

void initController(){
  Get.put(TapController());
  Get.put(ListController()); 
}

