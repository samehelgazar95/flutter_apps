void main() {
  void optionalParam(String name, [int? age, bool canCode = false]) {
    print("name: $name");
    if (age != null) {
      print("age: $age");
    }

    if (canCode == true) {
      print("Iam programmer");
    } else {
      print("Iam not programmer");
    }
  }

  optionalParam("Sameh", 29, true);

  void namedParam({required String name, int? age}) {
    print("Iam $name${age != null ? ', iam $age' : ''}");
  }

  namedParam(name: "Sameh", age: 29);
}
