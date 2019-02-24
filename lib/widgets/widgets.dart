import 'package:flutter/material.dart';
// import 'dart:async';
import '../bloc.dart';

class TextFieldWidget extends StatelessWidget {
  Widget build(context) {
    return StreamBuilder(
            stream: bloc.emailStream,
            builder: (context, snapshot) {
              return Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add email here',
                      labelText: 'Log me in!',
                      errorText: snapshot.error,
                    ),
                    onChanged: bloc.changeEmail,
                  ));
            });
  }
}

class PasswordFieldWidget extends StatelessWidget {
  Widget build(context) {
    return StreamBuilder(
          stream: bloc.passStream,
          builder: (context, snapshot) {
            return Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: bloc.changePass,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    errorText: snapshot.error),
              ),
            );
          },
        );

  }
}

class RaiseButtonWidget extends StatelessWidget {
  Widget build(context) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
            child: Text('Submit'),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: !snapshot.hasData ? null : () {
              print('haha');
            },
        );
      },
    );

  }
}

