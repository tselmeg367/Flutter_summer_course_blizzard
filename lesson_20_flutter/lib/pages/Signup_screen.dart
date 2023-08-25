import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/Auth_method.dart';
import 'package:lesson_20_flutter/screens/login_screen.dart';

import '../component/text_field.dart';

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

  void _signUp() async {
    String result = await AuthMethods().signUpUser(
        email: _emailController.text,
        username: _userController.text,
        password: _passwordController.text, file: null);
    if (result == 'success') {
      print('success');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    } else {
      print('not success');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
                const Text(
                  'iCodegram',
                  style: TextStyle(color: Colors.white, fontSize: 40, fontFamily: 'Lobster'),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldInput(
                  hintText: 'Email',
                  obsecureText: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.text, isPassword: false,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  obsecureText: false,
                  textEditingController: _userController,
                  textInputType: TextInputType.text, isPassword: false,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  obsecureText: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text, isPassword: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг давтаx',
                  obsecureText: true,
                  textEditingController: _rePasswordController,
                  textInputType: TextInputType.text, isPassword: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {_signUp();},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        color: Colors.deepOrange),
                    child: const Text('Бүртгүүлэх'),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Center(
                  child: Text(
                    'Эсвэл',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Бүртгэлтэй юу?   ',
                            style: TextStyle(fontSize: 15,color: Colors.white, fontFamily: 'Rubik')),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScreen()));
                            },
                            child: const Text(
                              'Нэвтрэх',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Rubik',
                                  color: Colors.deepOrange),
                            ))
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                )
              ],
            )),
      ),
    );
  }
}
