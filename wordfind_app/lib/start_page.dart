import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/user_model.dart';

User newUser = User('Guest', 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset('assets/images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/back2.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Image.asset('assets/images/iCodeGuyHead.png'),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              GradientText('Player Name', 20.0),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              InputField(
                onSubmitted: _createUser,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton('Start'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

class StartButton extends StatelessWidget {
  const StartButton(String text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFE86b02), Color(0xFFFA9541)],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          'START',
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
