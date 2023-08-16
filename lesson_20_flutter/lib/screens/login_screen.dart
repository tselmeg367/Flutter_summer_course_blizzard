import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/Auth_method.dart';
import 'package:lesson_20_flutter/component/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().LoginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      print('Logged in');
      setState(() {
        _isLoading = false;
      });
    } else {
      print('Not logged in');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text(
                'iCodegram',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: 'Enter your email',
                  isPassword: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 30,
              ),
              TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: 'Enter your password',
                  isPassword: true,
                  textInputType: TextInputType.text),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text('Нэвтрэх'),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
