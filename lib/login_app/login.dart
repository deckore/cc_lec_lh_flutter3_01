import 'package:flutter/material.dart';
import '../my_button/buttons.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: buildButton(),
    );
  }
}

Widget buildButton() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MyButton(
          image: Image.asset('images/glogo.png'),
          text: Text(
                  'Login with Google',
                  style: const TextStyle(color: Colors.black87, fontSize: 15.0),
                ),
  //              color: Colors.white,
          radius: 10.0,
          onPressed: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        ButtonTheme(
          height: 50.0,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/flogo.png'),
                Text(
                  'Login with Facebook',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('images/glogo.png'),
                ),
              ],
            ),
            //color: Color(0xFF334D92),
            onPressed: () {},
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ButtonTheme(
          height: 50.0,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  'Login with Email',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //color: Colors.green,
            onPressed: () {},
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
      ],
    ),
  );
}
