import 'dart:async';

class MyHomePageBloc {
  int counter = 0;
  final StreamController _streamController = StreamController();

  Sink get input => _streamController.sink;

  Stream get output => _streamController.stream;

  void incrementCounter() {
    counter++;
    input.add(counter);
  }
}
