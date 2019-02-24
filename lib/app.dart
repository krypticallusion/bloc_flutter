import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class AppWidget extends StatelessWidget {

  Widget build(context) {
    return MaterialApp(
      theme: new ThemeData(
        accentColor: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: Scaffold(
          body: Column(children: [
            TextFieldWidget(),
            PasswordFieldWidget(),
            RaiseButtonWidget()
      ])),
    );
  }
}
