import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/Auth_method.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
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
                  style: TextStyle(fontFamily: 'Lobster', fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 64,
                ),
                TextFieldInput(
                  hintText: 'Утасны дугаар',
                  isPassword: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false,
                  textEditingController: _userController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг давтаx',
                  isPassword: true,
                  textEditingController: _rePasswordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                    AuthMethods().LoginUser(
                        email: _emailController.text,
                        password: _passwordController.text);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text('Бүртгүүлэх'),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                )
              ],
            )),
      ),



    );
  }
}
