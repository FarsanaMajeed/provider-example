import 'package:flutter/cupertino.dart';

class MyModel extends ChangeNotifier {
  String someValue = 'Hello';
  void doSomething() {
    someValue = 'Goodbye';
    print(someValue);
    notifyListeners();
  }
}
