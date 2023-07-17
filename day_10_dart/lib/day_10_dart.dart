class Sprite {
  Sprite(int x, int y){
  this.x = x;
   this.y = y;}
  int x= 0;
  int y= 0;

   void makeNoise(){
     print('My Position is ${this.x} and ${this.y}');
   }
}

class Shape{
  int length = 0;
  int heigth = 0;
  Shape({ required int length,required int heigth}) {
    this.length=length;
    this.heigth=heigth;
  }
  void makeNoise(){
    print('My Position is ${this.length} and ${this.heigth}');
  }
}
class Animal{
  Animal ({required String name, required String type}){
    this.name = name;
    this.type = type;
  }
  String name = 'Animal';
  String type = 'Animal';
  void makeNoise(){
    print('Animal Poaring');
  }

}



void main(){
  final Drum = Sprite(1,2);
Drum.makeNoise();
final shape = Shape(length:1,heigth:3);
shape.makeNoise();
}
