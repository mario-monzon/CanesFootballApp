import 'package:canes_football_app/design/canes_color.dart';
import 'package:canes_football_app/design/canes_text_style.dart';
import 'package:canes_football_app/screen/home_screen.dart';
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
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CanesColor.colorBrand,
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
                    textAlign: TextAlign.center,
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
                  FlatButton(
                    onPressed: () {
                      print('Recuperar Password');
                    },
                    child: isLogin
                        ? Text(
                            'Recupera tu Password',
                            style: CanesTextStyle.buttonLabelM,
                          )
                        : Container(),
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  RaisedButton(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        isLogin ? 'Login' : 'Registrate',
                        textAlign: TextAlign.center,
                        style: CanesTextStyle.buttonLabelL,
                      ),
                    ),
                    onPressed: () {
                      //TODO: https://www.youtube.com/watch?v=gl6wpsgiNfY
                      isLogin ? print('Login') : print('Registro');
                      if (isLogin)
                        Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                  ),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          isLogin = !isLogin;
                        });
                      },
                      child: Text(
                        isLogin
                            ? 'No tienes cuenta? Registrate'
                            : 'Ya tienes cuenta? Logueate',
                        style: CanesTextStyle.buttonLabelM,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
