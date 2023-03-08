import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_test/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      child: Text('Go to third page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
        ]),
      ),
    );
  }
}