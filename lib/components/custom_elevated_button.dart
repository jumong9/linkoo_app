import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final fucPageRoute;

  const CustomElevatedButton({@required this.text, @required this.fucPageRoute});

   @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
        ),
        onPressed: fucPageRoute
        ,child: Text("$text")
    );
  }
}
