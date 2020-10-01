import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/flutter_responsiveness.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;

  AnimationController _controller;
  Animation _animation;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Initialize Screensize for making it Responsive. The function call initializes
      // the Screen in following Way:
      // initialHeight and initialWidth are the width and height in which your Screen Layout is default set in for developing Application
      // Let's say you, the developer is developing in Google Pixel 3a then it becomes default phone in which Application is developed by the developer
      // Now width and height parameter are the MediaQuery params which will help the in the responsiveness of the application.

      ScreenSize(
        initialHeight: 759.2727272727273,
        initialWidth: 392.72727272727275,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      );
    });
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(
            begin: 0.0 * ScreenSize.heightMultiplyingFactor,
            end: 300.0 * ScreenSize.heightMultiplyingFactor)
        .animate(_controller)
          ..addStatusListener((state) {
            if (state == AnimationStatus.completed) {
              print("completed");
            } else if (state == AnimationStatus.dismissed) {
              print("dismissed");
            }
          })
          ..addListener(() {
            print("value:${_animation.value}");
            setState(() {});
          });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              colors: Colors.purple,
              size: 100.0 * ScreenSize.heightMultiplyingFactor,
            ),
            AnimatedContainer(
              width: 300.0 * ScreenSize.widthMultiplyingFactor,
              height: _animation.value,
              curve: Curves.easeIn,
              duration: Duration(seconds: 5),
              color: Colors.amber,
            ),
            SizedBox(
              height: 10.0 * ScreenSize.heightMultiplyingFactor,
            ),
            Container(
              color: Colors.redAccent,
              height: 100.0 * ScreenSize.heightMultiplyingFactor,
              width: 100.0 * ScreenSize.widthMultiplyingFactor,
            ),
            SizedBox(
              height: 30.0 * ScreenSize.heightMultiplyingFactor,
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 16.0 * ScreenSize.heightMultiplyingFactor,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          size: 46 * ScreenSize.heightMultiplyingFactor,
        ),
      ),
    );
  }
}
