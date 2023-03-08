import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/list_controller.dart';
import 'package:getx_test/controllers/tap_controller.dart';
import 'package:getx_test/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(
            () => Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFF89DAD0),
                  ),
                  child: Center(
                    child: Text(
                      "Total value " + controller.z.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFF89DAD0),
                  ),
                  child: Center(
                    child: Text(
                      "Y value " + controller.y.value.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => HomePage());
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFF89DAD0),
              ),
              child: Center(
                child: Text(
                  "X value: " + controller.x.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //Get.to(()=>HomePage());
              controller.increaseY();
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFF89DAD0),
              ),
              child: Center(
                child: Text(
                  "Increase Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.totalXY();
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFF89DAD0),
              ),
              child: Center(
                child: Text(
                  "Total X+Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              listController.setValues(controller.z);
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFF89DAD0),
              ),
              child: Center(
                child: Text(
                  "Save Total",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
