import 'package:flutter/material.dart';

@immutable
class Person{
  final String firstName;
  final String lastName ;
  final int age;
  final String nation;

  const Person({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.nation,
});

  Person copyWith({
    String? firstName,
    String? lastName,
    int? age,
    String? nation,

   }){
    return Person(
        firstName: firstName??this.firstName,
        lastName: lastName??this.lastName,
        age: age??this.age,
        nation: nation??this.nation
    );
  }

  Person clone() => copyWith(firstName: firstName, lastName: lastName, age: age, nation: nation);

}

Person person = const Person(
    firstName: 'Augustine',
    lastName: 'Shokane',
    age: 24,
    nation: 'SA');
Person person1 = person.clone();
