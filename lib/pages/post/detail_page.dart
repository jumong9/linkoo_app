import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/pages/post/home_page.dart';
import 'package:linkoo_app/pages/post/update_page.dart';

class DetailPage extends StatelessWidget {

  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    //Get.to 로 파라미터 받을수 있음
    //String argData = Get.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //child: Text("Detail page $id"),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("글제목",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
            Divider(height: 10),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Get.off(HomePage());
                },child: Text("삭제")),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  Get.to(UpdatePage());
                },child: Text("수정")),
              ],
            ),
            //Expanded(child: child)
            Expanded(
                child: SingleChildScrollView(
                  child: Text("글 내용"*500),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
