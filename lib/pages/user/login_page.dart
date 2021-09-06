import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/components/custom_elevated_button.dart';
import 'package:linkoo_app/components/custom_text_form_field.dart';
import 'package:linkoo_app/pages/post/home_page.dart';
import 'package:linkoo_app/pages/user/join_page.dart';
import 'package:linkoo_app/util/validator_util.dart';

class LoginPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "로그인 페이지",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ),
              ),
            ),
            _loginForm()
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint:"Enter ID",
            fncValidator:validateID(),
          ),
          CustomTextFormField(hint:"Enter Password",
            fncValidator:validatePassword(),
          ),
          CustomElevatedButton(text: "로그인",
              fncPageRoute: () {
              if (_formKey.currentState.validate()) {
                Get.to(HomePage());
              }
            }
          ),
          TextButton(onPressed: (){
            Get.to(JoinPage());
          },child: Text("로그인 하기")
          )
        ],
      ),
    );
  }
}


