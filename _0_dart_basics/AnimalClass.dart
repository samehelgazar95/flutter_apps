
// Animal Class
abstract class Animal {
  static int _numberOfAnimals = 0;
  String _name;
  String _color;

  Animal(this._name, this._color) {
    _numberOfAnimals++;
  }

  void makeSound();

  String get name => _name;
  set name(newName) {
    if (_name == newName) {
      throw Exception("The name is already $_name");
    }

    _name = newName;
  }

  String get color => _color;
  set color(newColor) {
    if (_color == newColor) {
      throw Exception("The color is already $_color");
    }

    _color = newColor;
  }

  static int get numberOfAnimals => _numberOfAnimals;
}

// -------------------------------------------------------------------

// Mixin
mixin CanFly {
  void fly();
}

// -------------------------------------------------------------------

class Dog extends Animal {
  String type;

  Dog(String name, this.type, String color) : super(name, color);

  @override
  void makeSound() {
    print("Dog barks");
  }
}

// -------------------------------------------------------------------

class Cat extends Animal with CanFly {
  Cat(String name, String color) : super(name, color);

  @override
  void makeSound() {
    print("Cat meows");
  }

  @override
  void fly() {
    print("Can fly");
  }

  @override
  String toString() {
    // implement the override to toString func
    return super.toString();
  }
}
