import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesignpatternous/flutter_abstract_factory.dart';
import 'package:flutterdesignpatternous/flutter_factory_method.dart';

abstract class AbstractFactory{
  Widget buildButton(BuildContext context, String text , VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImp implements AbstractFactory{
  static AbstractFactoryImp? _instance;
  AbstractFactoryImp._internal();

  static AbstractFactoryImp get instance {
    _instance ??= AbstractFactoryImp._internal();
    return _instance!;
  }


  @override
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(onPressed, Text(text));
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}