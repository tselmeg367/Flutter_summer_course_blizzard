class Shape{
  int size = 0;
  int length = 0;
  int height = 0;
  Shape({required int size, required int length, required int height}) {
    this.size = size;
    this.length = length;
    this.height = height;
  }
void showInfo(){
    print('im a shape');
}
}
class Rectangle extends Shape {
  Rectangle({required super.size, required super.length, required super.height});
  @override
 void showInfo(){
    print('im a rectangle');

  }
}
void main(){
  final shape = Shape(size:3, length: 10, height: 30);
  shape.showInfo();
  final rectangle = Rectangle(size: 3, length: 20, height: 40);
  rectangle.showInfo();
  final pig =Pig(name: 'gahai', type: 'buduun');
  pig.makeNoise();
  final cat =Cat(name: 'muur', type: 'buduun');
  cat.makeNoise();
  final horse =Horse(name: 'mori', type: 'hurdan');
  horse.makeNoise();
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
class Pig extends Animal {
  Pig ({required super.name, required super.type});
 @override
  void makeNoise(){
    print('pig roarrr');
  }
}
class Cat extends Animal {
 Cat({required super.name, required super.type});
  @override
  void makeNoise(){
    print('mmrrr');
  }
}
class Horse extends Animal {
Horse({required super.name, required super.type});
  @override
  void makeNoise(){
    print('rrrrr');
  }
}