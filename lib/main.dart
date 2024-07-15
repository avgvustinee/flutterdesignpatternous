import 'package:flutter/material.dart';
import 'package:flutterdesignpatternous/factory_method.dart';
import 'package:flutterdesignpatternous/singleton_one.dart';
import 'package:flutterdesignpatternous/singleton_three.dart';
import 'package:flutterdesignpatternous/singleton_two.dart';
import 'home_screen.dart';

void main() {
  Employee employee = FactoryMethod.getEmployee(EmployeeType.boss);
  employee.work();
  employee = Programmer();
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SingletonOne singletonOne = SingletonOne.getInstance(); // 1st Approach
    SingletonTwo singletonTwo = SingletonTwo.instance; // 2nd Approach
    SingletonThree singletonThree = SingletonThree(); // 3rd Approach
    return MaterialApp(
      title: 'Ep. 1 Design Patterns - Factory Method Pattern ',
      home: MyHomePage(),
    );
  }
}
