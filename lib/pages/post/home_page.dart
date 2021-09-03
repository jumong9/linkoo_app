import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/pages/user/login_page.dart';
import 'package:linkoo_app/util/size_util.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(),
      /*body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          title: Text("제목")
        );
      }
      ),*/
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
              TextButton(onPressed: (){},
                child: Text(
                  "회원정보보기",
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
