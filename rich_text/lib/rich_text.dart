import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(RichTextField());
}

class RichTextField extends StatelessWidget {
  const RichTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            //Background color
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.orange])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(children: <Widget>[
              Container(
                child: RichText(
                    //Heading
                    text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: "WELCOME",
                        style: TextStyle(
                            color: Color.fromARGB(255, 53, 41, 87),
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    TextSpan(
                        text: "  TO",
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 65, 121),
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    TextSpan(
                        text: "  TRAVELWORLD",
                        style: TextStyle(
                            color: Color.fromARGB(255, 40, 196, 188),
                            fontWeight: FontWeight.bold,
                            fontSize: 30))
                  ],
                )),
              ),
              DefaultTabController(
                //Tabbar ie 3 tabbar
                length: 3,

                child: TabBar(
                  tabs: const [
                    Tab(icon: Icon(Icons.flight)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_car)),
                  ],
                  indicator: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen),
                ),
              )
            ]),
            bottomNavigationBar:
                BottomNavigationBar(items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  label: ' account'),
            ])));
  }
}
