import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/tap_controller.dart';
import 'package:getx_test/first_page.dart';
import 'package:getx_test/second_page.dart';
import 'package:getx_test/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TapController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Text(controller.x.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ), 
                GestureDetector(
                  onTap: () {
                    controller.increaseX();
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
                      child: Text('Add 1',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
                
               GestureDetector(
                  onTap: () {
                    Get.to(()=>FirstPage());
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
                      child: Text('Go to first page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Get.to(()=>SecondPage());
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
                      child: Text('Second Page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),

                GestureDetector( 
                  onTap: () {
                    Get.to(()=>ThirdPage());
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
                      child: Text('Third page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}