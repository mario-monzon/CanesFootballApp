import 'package:canes_football_app/design/canes_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: CanesColor.defaultColor,
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.userAlt),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(FontAwesomeIcons.eye),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textAlign: TextAlign.center,
                    obscureText: _obscureText,
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  RaisedButton(
                    child: Text(
                      'Login',
                      style: CanesTextStyle.buttonLabel,
                    ),
                    onPressed: () {
                      print('Login');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
