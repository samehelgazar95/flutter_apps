class Person {
  String? _name;
  int? _age;

  Person(this._name, this._age);

  String get name => _name!;

  set name(String newName) {
    if (newName == _name) {
      throw Exception("NewNameMustBeDifferentThanExistingName");
    }

    _name = newName;
  }

  int get age => _age!;

  set age(int newAge) {
    _age = newAge;
  }
}
