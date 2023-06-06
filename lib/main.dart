import 'package:flutter/material.dart';

void main() => runApp(WelcomeGuests());

class WelcomeGuests extends StatefulWidget {
  const WelcomeGuests({Key? key}) : super(key: key);

  @override
  State<WelcomeGuests> createState() => _WelcomeGuestsState();
}

class _WelcomeGuestsState extends State<WelcomeGuests> {

  String userName= "";
  List<String> guestList = ["Farrukh","Ehsan","Elahi"];

  Icon guestIcon = Icon(Icons.ac_unit,color: Colors.yellow,);

  void checkGuest(String uName)
  {
    if(guestList.contains(uName))
      {
        setState(() {
          userName = uName;
          guestIcon = Icon(Icons.check,color: Colors.green,);
        });
      }
    else
      {
        setState(() {
        userName ="You are not on list";
        guestIcon = Icon(Icons.cancel,color: Colors.red,);
        });
      }
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: [
            TextField(
              onChanged: (changedCharacter){
                  checkGuest(changedCharacter);
              },
              keyboardType: TextInputType.name,
            ),
            Text("Hey $userName, you are welcome !!"),
            Container(
              child: guestIcon ,
            )
          ],
        ),
      ),
    );
  }
}





class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
              radius: 50,
            ),
            Text(
              "Farrukh Ehsan",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Hey',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              "Android Native App Developer",
              style: TextStyle(color: Colors.white, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}

class TheJune extends StatelessWidget {
  const TheJune({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              color: Colors.amber,
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              color: Colors.yellow,
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
            )
          ],
        ),
      ),
    );
  }
}

class Hero extends StatelessWidget {
  const Hero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          leading: Icon(Icons.menu),
          title: Text(
            "Stateless Widget",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text(
            "Hey Hero !!",
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
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
          leading: Icon(Icons.menu),
          title: Text(
            "Stateful Widget",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text(
            "Hey Hero Extended!!",
            style: TextStyle(color: Colors.amber, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
