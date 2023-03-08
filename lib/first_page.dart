import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(children: [
          GetBuilder<TapController>(builder: (_){
            return Container(
            margin: EdgeInsets.all(20),
            width: double.maxFinite,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0XFF89DAD0),
            ),
            child: Center(
              child: Text(
                controller.x.toString(),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          );
          }),
          GestureDetector(
            onTap: () {
              controller.decreaseX();
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
                  'Decrease X',
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
