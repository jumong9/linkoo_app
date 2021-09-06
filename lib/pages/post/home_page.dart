import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/pages/post/detail_page.dart';
import 'package:linkoo_app/pages/post/write_page.dart';
import 'package:linkoo_app/pages/user/login_page.dart';
import 'package:linkoo_app/pages/user/user_info.dart';
import 'package:linkoo_app/util/size_util.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(),
      body: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              //Get.to(arguments)로 파리미터 넘길수 있음
              Get.to(DetailPage(index),arguments: "argument data");
            },
            title: Text("제목"),
            leading: Text("1"),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        }),
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color:Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(onPressed: () => Get.to(UserInfo()),
                child: Text(
                  "회원정보보기",
                  style: TextStyle(color:Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              TextButton(onPressed: () => Get.to(WritePage()),
                child: Text(
                  "글쓰기",
                  style: TextStyle(color:Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              TextButton(onPressed: () => Get.to(LoginPage()),
                child: Text(
                  "로그아웃",
                  style: TextStyle(color:Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
