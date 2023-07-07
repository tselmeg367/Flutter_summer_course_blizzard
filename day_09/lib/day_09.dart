class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;
  Sprite(String name) {
   this.name = name;
  }
  void say(String name) {
    print('Hello My name is $name');
  }

  void move(int x) {
    this.x = x;
    print('i moved ${this.x}');
  }

  String getName() {
    return name;

  }
}

void main() {
  final Dee = Sprite('Dee');
  Dee.say('Hello');
  Dee.move(200);
  print(Dee.getName());
  final Chick = Sprite('Chick');
  Chick.say('Chick');
  Chick.move(200);
  print(Chick.getName());
  final Ruby = Sprite('Ruby');
  Ruby.say('Ruby');
  Ruby.move(200);
  print(Ruby.getName());
}
