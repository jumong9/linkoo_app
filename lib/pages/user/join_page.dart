import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/components/custom_elevated_button.dart';
import 'package:linkoo_app/components/custom_text_form_field.dart';
import 'package:linkoo_app/pages/user/login_page.dart';
import 'package:linkoo_app/util/validator_util.dart';

class JoinPage extends StatelessWidget {

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
                  "회원가입 페이지",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ),
                ),
            ),
            _joinForm()
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint:"Enter ID",
            fncValidator: validateID(),
          ),
          CustomTextFormField(
              hint:"Enter Password",
              fncValidator:validatePassword(),
          ),
          CustomTextFormField(
              hint:"Enter Email",
              fncValidator:validateEmail(),
          ),
          CustomElevatedButton(
            text:"회원가입",
            fncPageRoute: (){
              if(_formKey.currentState.validate()){
                Get.to(LoginPage());
              }
            },
          ),
          TextButton(onPressed: (){
            Get.to(LoginPage());
          },child: Text("회원가입 하기")
          )
        ],
      ),
    );
  }
}


