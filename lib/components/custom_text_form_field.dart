import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final bool password;
  final fncValidator;

  const CustomTextFormField({
    @required this.hint,
    this.password = false,
    @required this.fncValidator
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        validator: fncValidator,
        obscureText: password ? true : false,
        decoration: InputDecoration(
          hintText: "$hint",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

}
