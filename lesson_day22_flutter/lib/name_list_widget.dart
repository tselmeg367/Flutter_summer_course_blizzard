import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'pummel',
    'Roach',
    'Aguirre',
    'Dakota',
    'Franklin',
    'Bruno',
    'Mccall',
    'Elisa',
    'Grayson',
    'Krystal',
    'Hernandez',
    'Kaylie',
    'Castillo',
    'Cloe',
    'Mcknight',
    'Kaley',
    'Carey',
    'Archer',
    'Cardenas',
    'Allen',
    'Giancarlo',
    'Josh',
    'Fowler',
    'Reyna',
    'Peters',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
           height: 50,
           width: 50,
           color: Colors.yellow,
           child: Text(names[index]),
          );
        },
      ),
    );
  }
}
