import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FizzBuzz App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Front Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: BodyHome(i),
    );
  }
}

class BodyHome extends StatelessWidget {
  final int i;

  BodyHome(this.i);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_printFizzBuzz(i)),
    );
  }

  String _printFizzBuzz(int i) {
    String res = "";
    if (i % 15 == 0){
      res = "FizzBuzz - $i";
    }else if (i % 3 == 0){
      res = "buzz - $i";
    }else if (i % 5 == 0){
      res = "fizz - $i";`
    }else{
      res = "$i";
    }
    return res;
  }
}
