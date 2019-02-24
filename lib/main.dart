import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:async';

void main() {
  runApp(AppWidget());
}

class VMixins {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('No such email found!');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (pass, sink) {
      if (pass.length < 3) {
        sink.addError('Invalid password');
      } else {
        sink.add(pass);
      }
    },
  );
}
