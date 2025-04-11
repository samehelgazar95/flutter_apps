enum Days {
  saturday,
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday;

  String get description {
    switch(this) {
      case Days.saturday:
        return "This is ${this.name}";
      case Days.sunday:
        return "This is ${this.name}";
      case Days.monday:
        return "This is ${this.name}";
      case Days.tuesday:
        return "This is ${this.name}";
      case Days.thursday:
        return "This is ${this.name}";
      case Days.friday:
        return "This is ${this.name}";
      default:
        return "Unknown day";
    }
  }
}

void main() async {
  Days monday = Days.monday;
  print(monday.name);
  print(monday.description);
}
