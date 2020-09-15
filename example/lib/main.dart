import 'package:flutter/material.dart';
import 'package:implicit_navigator/shelf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'implicit_route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImplicitNavigator(
        routes: <ImplicitRoute>[
          ImplicitRoute(
            initial: true,
            builder: (_) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('initial route'),
                  RaisedButton(
                    child: Text('Navigate to second route'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          ImplicitRoute(
            builder: (_) => Center(
              child: Text('second route'),
            ),
          ),
          ImplicitRoute(
            builder: (_) => Center(
              child: Text('third route'),
            ),
          ),
        ],
      ),
    );
  }
}
