import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster', fontSize: 30, color: Colors.black),
            ),
          ),

          CircleAvatar(
            child: Container(
              child: TextButton(
                onPressed: (){},
                child: Center(
                  child: Icon(Icons.add, color: Colors.white, size: 25,),
                ),
              ),
            ),
          ),

        ]),
      )),
    );
  }
}
