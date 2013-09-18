import 'package:polymer/polymer.dart';
import 'dart:html';

// XXX: Must always have a class for every custom element.
// See https://code.google.com/p/dart/issues/detail?id=12254

@CustomTag('my-element')
class MyElement extends PolymerElement {
  void moveEvent(Event e, var detail, Node target) => print('moveEvent ${new DateTime.now()}');
  void downEvent(Event e, var detail, Node target) => print('downEvent ${new DateTime.now()}');
  void upEvent(Event e, var detail, Node target) => print('upEvent ${new DateTime.now()}');
}

@CustomTag('my-child')
class MyChild extends PolymerElement { }