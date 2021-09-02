import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final funageRoute; function

  const CustomElevatedButton({@required this.text, @required this.pageRoute, this.minSize});

   @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
        ),
        onPressed: pageRoute
        ,child: Text("$text")
    );
  }
}
