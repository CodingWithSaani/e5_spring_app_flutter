import 'package:flutter/material.dart';

void main() => runApp(HeroExtended());

class Hero extends StatelessWidget {
  const Hero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          leading: Icon(
            Icons.menu
          ),
          title: Text(
              "Stateless Widget",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text("Hey Hero !!",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 30.0
          ),),
        ),
      ),
    );
  }
}

class HeroExtended extends StatefulWidget {
  const HeroExtended({Key? key}) : super(key: key);

  @override
  State<HeroExtended> createState() => _HeroExtendedState();
}

class _HeroExtendedState extends State<HeroExtended> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          leading: Icon(
              Icons.menu
          ),
          title: Text(
            "Stateful Widget",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text("Hey Hero Extended!!",
            style: TextStyle(
                color: Colors.amber,
                fontSize: 30.0
            ),),
        ),
      ),
    );
  }
}









