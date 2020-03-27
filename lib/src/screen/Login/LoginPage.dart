import 'package:example_flutter/src/components/Button.dart';
import 'package:example_flutter/src/components/CheckBox.dart';
import 'package:example_flutter/src/components/InputContainer.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:example_flutter/src/screen/Login/actions/login_acions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email;
  TextEditingController password;
  bool checkBox;

  @override
  void initState() {
    super.initState();
    email = new TextEditingController();
    password = new TextEditingController();
    checkBox = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xFF3fc4ff)),
      child: Center(
        child: SizedBox(
          width: 560,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to RC-EXPEDITE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Color(0xFFecf9ff)),
              ),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'enter your ',
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: 'username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: 'password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' to start your session',
                      style: TextStyle(),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Color(0xFFecf9ff)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFf7f9f8),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      InputFormContainer(title: 'EMAIL', myController: email),
                      InputFormContainer(
                          title: 'PASSWORD', myController: password),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          CheckBox(value: checkBox, tapEvent: _remember),
                          Expanded(
                            child: Container(),
                          ),
                          Button(
                              label: 'LOG IN',
                              press: _login,
                              icon: Icons.arrow_forward_ios)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void _remember() {
    setState(() {
      checkBox = !checkBox;
    });
  }

  void _login() async {
    await StoreProvider.of<AppState>(context)
        .dispatch(login(email.text, password.text));
    Navigator.of(context).pushNamed('/app');
    // appBloc.add(new FetchLogin(
    //     email: email.text, password: password.text, context: context));
  }
}
