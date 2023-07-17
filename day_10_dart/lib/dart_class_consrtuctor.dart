class Wheel{
  int numberOfWheels = 0;
  Wheel({required int numberOfWheels}){
    this.numberOfWheels=numberOfWheels;

  }
}

class Car{
  String name = 'Car';
  Wheel dugui = Wheel(numberOfWheels: 4);
  Car ({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui=dugui;
  }
}
void main(){
  final lamborghiniDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: 'Lamborgini',dugui: lamborghiniDugui);
}
class Door{
  int numberOfDoors =0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}
class Floor{
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
}
class Building{
  String name= 'name';
 Floor floors= Floor(numberOfFloors: 2);
Door door=Door(numberOfDoors: 3);
  Building({required String name, required Floor floors, required Door doors, }){
    this.name= name;
    this.floors=floors;
    this.door=doors;
  }



}






