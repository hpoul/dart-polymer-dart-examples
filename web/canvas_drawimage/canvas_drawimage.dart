import 'package:polymer/polymer.dart';

import 'dart:html';


@CustomTag('canvas-drawimage')
class CanvasDrawImage extends PolymerElement {
  CanvasElement _canvas;
  CanvasRenderingContext2D _context;
  ImageElement _testImage;
  
  void inserted() {
    super.inserted();
    
    
    // load image ..
    _testImage = new ImageElement(src: "https://www.dartlang.org/imgs/dart-logo.png");
    _testImage.onLoad.first.then((v) {
      _redraw();
    });
  }
  
  void _redraw() {
    _canvas = getShadowRoot('canvas-drawimage').query('#testcanvas');
    _context = _canvas.getContext('2d');
    _context.drawImage(_testImage, 5, 5);
  }
}