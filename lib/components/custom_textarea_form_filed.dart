import 'package:flutter/material.dart';

class CustomTextareaFormField extends StatelessWidget {

  final String hint;
  final fncValidator;
  final String value;


  const CustomTextareaFormField({
    @required this.hint,
    @required this.fncValidator,
    this.value
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        initialValue: this.value ?? "",
        maxLines: 15,
        validator: fncValidator,
        decoration: InputDecoration(
          hintText: "$hint",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

}
