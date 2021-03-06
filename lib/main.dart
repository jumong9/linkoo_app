import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/pages/post/home_page.dart';
import 'package:linkoo_app/pages/user/join_page.dart';
import 'package:linkoo_app/pages/user/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //라우트 설계 필요없음 GetX 사용할 예정
      home: HomePage(),
    );
  }
}
