library flutter_responsive;

double defaultWidth;
double defaultHeight;

class ScreenSize {
  double _width;
  double _height;

  static double _widthMultiplyingFactor = 1;
  static double _heightMultiplyingFactor = 1;

  ScreenSize({initialWidth, initialHeight, width, height}) {
    defaultHeight = initialHeight;
    defaultWidth = initialWidth;
    _width = width;
    _height = height;
    _widthMultiplyingFactor = _width / defaultWidth;
    _heightMultiplyingFactor = _height / defaultHeight;
    print('this width ' + _width.toString());
    print('default width ' + defaultWidth.toString());
    print('this height ' + _height.toString());
    print('default height ' + defaultHeight.toString());
    print('default heightMulti ' + _widthMultiplyingFactor.toString());
    print('default widthMulti' + _heightMultiplyingFactor.toString());
  }

  static double get heightMultiplyingFactor => _heightMultiplyingFactor;

  static double get widthMultiplyingFactor => _widthMultiplyingFactor;
}
