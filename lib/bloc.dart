import 'dart:async';
import 'main.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with VMixins {
  final _emailValidator = StreamController<String>.broadcast();
  final _pass = StreamController<String>.broadcast();

  Stream<bool> get submitValid =>
      Observable.combineLatest2(emailStream, passStream, (e, p) => true);

  Stream<String> get passStream => _pass.stream.transform(validatePassword);
  Function(String) get changePass => _pass.sink.add;
  Stream<String> get emailStream =>
      _emailValidator.stream.transform(validateEmail);
  Function(String) get changeEmail => _emailValidator.sink.add;

  dispose() {
    _emailValidator.sink.close();
    _pass.sink.close();
  }
}

final bloc = Bloc();
