import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:leaseposh/consts/consts.dart';
import 'package:leaseposh/widgets_common/appLogoWidget.dart';
import 'package:leaseposh/screens/screens.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _splashScreen();
}

class _splashScreen extends State<SplashScreen>{
  //Method To Change Screen
  changeScreen(){
    Future.delayed(Duration(seconds:3),(){
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState(){
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: appLogoWidget(150.0,150.0),
            )
          ],
        ),
      ),
    );
  }

}