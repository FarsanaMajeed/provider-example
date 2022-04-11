import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifier_provider/models/my_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            centerTitle: true,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[200],
                child: Consumer<MyModel>(
                  builder: (context, myModel, child) {
                    return ElevatedButton(
                        onPressed: () {
                          myModel.doSomething();
                        },
                        child: const Text('Do something'));
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(35),
                color: Colors.blue,
                child: Consumer<MyModel>(
                  builder: (context, myModel, child) {
                    return Text(myModel.someValue);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
