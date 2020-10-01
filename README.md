# flutter_responsive

A new Flutter package project for making apps responsive. A responsive app lays out its UI according to the size and shape of the screen or window. This is especially necessary when the same app can run on a variety of devices, from a watch, phone, tablet, to a laptop or desktop computer. When the user resizes the window on a laptop or desktop, or changes the orientation of the phone or tablet, the app should respond by rearranging the UI accordingly.

### Show some :heart: and star the repo to support the project

## Screenshot and GIF :

![pub](https://github.com/DC0202/Flutter-Responsive/blob/master/SS-1.png)

![pub](https://github.com/DC0202/Flutter-Responsive/blob/master/flutter_repsonsive_example.gif)

## Usage

[Refer to the Example](https://github.com/DC0202/Flutter-Responsive/blob/master/example/lib/main.dart)

### To use this package :

- Add the dependency to your

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_responsive:
```

### How to use

Initialize Screensize for making it Responsive. The function call initializes the Screen in following Way:

- initialHeight and initialWidth are the width and height in which your Screen Layout is default set in for developing Application
- Let's say you, the developer is developing in Google Pixel 3a then it becomes default phone in which Application is developed by the developer
- Now width and height parameter are the MediaQuery params which will help the in the responsiveness of the application.

```dart
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScreenSize(
      initialHeight: 759.2727272727273,
      initialWidth: 392.72727272727275,
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

    Copyright 2020 Darshil Chheda

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
