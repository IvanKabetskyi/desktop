import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/bloc/app/app_state_event.dart';
import 'package:example_flutter/src/components/Button.dart';
import 'package:example_flutter/src/components/CheckBox.dart';
import 'package:example_flutter/src/components/InputContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:example_flutter/src/data/repositories/user_repositore.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email;
  TextEditingController password;
  bool checkBox;
  AppBloc appBloc;

  @override
  void initState() {
    super.initState();
    email = new TextEditingController();
    password = new TextEditingController();
    checkBox = false;
    appBloc = BlocProvider.of<AppBloc>(context);
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
    print('Login page');
    AppRepositoryImpl repository = new AppRepositoryImpl();
    await repository.login(email.text, password.text, context);
    appBloc.add(new FetchLogin(
        email: email.text, password: password.text, context: context));
  }
}
