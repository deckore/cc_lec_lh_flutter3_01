import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  Widget? image;
  Text? text;
  Color? color;
  double? radius = 1.0;
  VoidCallback? onPressed;
  
  MyButton({Image? image, Text? text, Color? color, double? radius, VoidCallback? onPressed}) {
    this.image = image;
    this.text = text;
    this.color = color;
    this.radius = radius;
    this.onPressed = onPressed;
  }
  //MyButton({this.image, this.text, this.color, this.radius, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image!,
            text!,
            Opacity(
              opacity: 0.0,
              child: image,
            ),
          ],
        ),
        //color: color,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius!),
        ),
      ),
    );
  }
}
