import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('stop-propagation')
class MyElement extends PolymerElement {
  
  void innerClicked(Event event, var detail, Node target) {
    event.stopPropagation();
    print('inner clicked');
  }
  void outerClicked(Event event, var detail, Node target) {
    print('outer clicked');
  }
}