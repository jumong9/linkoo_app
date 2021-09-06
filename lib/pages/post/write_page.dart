import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkoo_app/components/custom_elevated_button.dart';
import 'package:linkoo_app/components/custom_text_form_field.dart';
import 'package:linkoo_app/components/custom_textarea_form_filed.dart';
import 'package:linkoo_app/pages/post/home_page.dart';
import 'package:linkoo_app/util/validator_util.dart';

class WritePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(hint: "Title", fncValidator: validateTitle()),
              CustomTextareaFormField(hint: "Contents", fncValidator: validateContents()),
              CustomElevatedButton(text: "글쓰기",
                  fncPageRoute: () {
                    if (_formKey.currentState.validate()) {
                      Get.off(HomePage());
                    }
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
