# flutter_responsiveness

A new Flutter package project for making apps responsive. A responsive app lays out its UI according to the size and shape of the screen or window. This is especially necessary when the same app can run on a variety of devices, from a watch, phone, tablet, to a laptop or desktop computer. When the user resizes the window on a laptop or desktop, or changes the orientation of the phone or tablet, the app should respond by rearranging the UI accordingly.

### Show some :heart: and star the repo to support the project

## Screenshot and GIF :
![pub](https://github.com/DC0202/Flutter-Responsive/blob/master/flutter_repsonsive_example.gif)

![pub](https://github.com/DC0202/Flutter-Responsive/blob/master/SS-1.png)

## Usage

[Refer to the Example](https://github.com/DC0202/Flutter-Responsive/blob/master/example/lib/main.dart)

### To use this package :

- Add the dependency to your

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_responsiveness:
```

### How to use

Initialize Screensize for making it Responsive. The function call initializes the Screen in following Way:

- initialHeight and initialWidth are the width and height in which your Screen Layout is default set in for developing Application.
- Let's say you, the developer is developing in Google Pixel 3a then it becomes default phone in which Application is developed by the developer. Make sure to enter the initialHeight and initialWidth for responsiveness
- Now width and height parameter are the MediaQuery params which will help the in the responsiveness of the application.

```dart
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScreenSize(
      initialHeight: 759.2727272727273, // for Google Pixel 2XL height is 823
      initialWidth: 392.72727272727275, // for Google Pixel 2XL width is 411
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  });
}
```

```dart
Text(
  'Sample Text',
  style: TextStyle(
  fontSize: 16.0 * ScreenSize.heightMultiplyingFactor, // USE
 ),
),
```

```dart
Icon(
  Icons.add,
  size: 46 * ScreenSize.heightMultiplyingFactor,
),
```

```dart
Container(
  color: Colors.redAccent,
  height: 100.0 * ScreenSize.heightMultiplyingFactor,
  width: 100.0 * ScreenSize.widthMultiplyingFactor,
),
```

# License

```
MIT License

Copyright (c) 2020 DC0202

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
