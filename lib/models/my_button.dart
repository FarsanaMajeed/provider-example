import 'package:flutter/material.dart';
import 'package:notifier_provider/models/my_model.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);
    return ElevatedButton(
      child: const Text('Do something'),
      onPressed: () {
        myModel.doSomething();
      },
    );
  }
}
