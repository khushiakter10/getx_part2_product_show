
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part2/view/screen/auth/sign_in.dart';
import 'package:getx_part2/view/screen/auth/sign_up.dart';
import 'package:getx_part2/view/screen/splash/splash.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}