import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lec/screens/age.dart';
import 'package:lec/screens/courses.dart';
import 'screens/gender.dart';
import 'screens/nationality.dart';
import './screens/courses.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Home();
//   }
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List MyListItem = [
    "flutter",
    "full stack",
    "quality assurance",
    "java development"
  ];
  String SelectedItem = "flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "welcome to luminos college",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        backgroundColor: Color.fromARGB(255, 192, 77, 77),
      ),
      drawer: Drawer(),
      body:
          //  SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Color.fromARGB(255, 192, 77, 77),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "welcome oure lover student we wont frome you to give us a fiwe info so thanks for your time",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              height: 40,
            ),
            MaterialButton(
              color: Colors.grey,
              child: Text(
                "choose your gender",
                style: TextStyle(
                    color: Color.fromARGB(255, 192, 77, 77), fontSize: 20),
              ),
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Gender();
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Divider(
              height: 40,
            ),
            MaterialButton(
              color: Colors.grey,
              child: Text(
                "choose your natihonality",
                style: TextStyle(
                    color: Color.fromARGB(255, 192, 77, 77), fontSize: 20),
              ),
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Nantionality();
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Divider(
              height: 40,
            ),
            MaterialButton(
              color: Colors.grey,
              child: Text(
                "choose your age (have to be between 18-23)",
                style: TextStyle(
                    color: Color.fromARGB(255, 192, 77, 77), fontSize: 15),
              ),
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Age();
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Divider(
              height: 40,
            ),
            MaterialButton(
              color: Colors.grey,
              child: Text(
                "wiche corse want to rigister in ",
                style: TextStyle(
                    color: Color.fromARGB(255, 192, 77, 77), fontSize: 20),
              ),
              onPressed: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Courses();
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Container(
              child: Text(
                "choose a corse frome drob down menue ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            DropdownButton(
              value: SelectedItem,
              items: MyListItem.map(
                (e) => DropdownMenuItem(value: e, child: Text("$e")),
              ).toList(),
              onChanged: (value) {
                setState(() {
                  SelectedItem = value.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
