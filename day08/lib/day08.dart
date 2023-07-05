import 'package:day08/add.dart';
import 'dart:io';
import 'dart:math';
void main(){
  print('Day-08');
  print(add(4, 5));
  print(minus(5, 6));
  print(minus(10, 4));
  final myObject = A();
  print(myObject.x);
  print(myObject.y);
  print(myObject.nextInt());
  print(myObject.add(4,5));
  final Random random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);

    final int randoMNumber = random.nextInt(20) + 1;
  print( randoMNumber);

}

class A{
  int x = 0;
  int y= 0;
  int nextInt(){
    return 100;
  }
  int add(int a, int b){
    return a+b;
  }}