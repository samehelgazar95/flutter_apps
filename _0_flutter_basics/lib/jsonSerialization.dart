// ignore_for_file: file_names

import 'dart:convert';

class Restaurant {
  final String name;
  final String cuisine;

  Restaurant({required this.name, required this.cuisine});

  factory Restaurant.fromJson(Map<String, dynamic> jsonMap) {
    final name = jsonMap['name'];
    final cuisine = jsonMap['cuisine'];
    return Restaurant(name: name, cuisine: cuisine);
  }

  Map<String, dynamic> toJson() => {"name": name, "cuisine": cuisine};
}

void main() {
  final String jsonData = '{ "name": "Pizza da Mario", "cuisine": "Italian" }';

  final parsedJson = jsonDecode(jsonData);

  final Restaurant rest = Restaurant.fromJson(parsedJson);

  print(rest.name);
  print(rest.cuisine);

  print(jsonEncode(rest));
}
