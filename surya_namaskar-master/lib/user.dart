import 'package:flutter/src/widgets/editable_text.dart';

class User {
  String? name;
  String? experience;
  String? workout;
  String? breathing;
  int cycles;

  User(this.name, this.experience, this.workout, this.breathing, this.cycles);
  @override
  String toString() {
    return 'User{name: $name, experience: $experience, workout: $workout, breathing: $breathing, cycles: $cycles}';
  }
}
