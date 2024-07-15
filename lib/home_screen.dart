import 'package:flutter/material.dart';
import 'package:flutterdesignpatternous/abstract_factory.dart';
import 'package:flutterdesignpatternous/flutter_factory_method.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //PlatformButton(TargetPlatform.android).build(() { print('augustine wake up ');}, Text('Click'),),
         // PlatformButton(TargetPlatform.iOS).build(() { print('augustine wake up ');}, Text('Click'),),
          //AbstractFactoryImp().buildButton(context, 'Hello', () { }),
          //SizedBox(height: 10,),
         // AbstractFactoryImp().buildIndicator(context),
          AbstractFactoryImp.instance.buildIndicator(context),
        ],
      ),
    );
  }
}

