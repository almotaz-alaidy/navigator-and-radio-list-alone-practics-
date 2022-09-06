import 'package:flutter/material.dart';
import 'package:lec/main.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  String MyGroupeValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "courses",
            style: TextStyle(
                fontSize: 40, color: Colors.grey, fontFamily: "Combo-Regular"),
          ),
          backgroundColor: Color.fromARGB(255, 192, 77, 77),
        ),
        drawer: Drawer(),
        body: Container(
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
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "choose a course to rigister on ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Combo-Regular"),
                ),
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Icon(
                  Icons.school,
                  color: Colors.grey,
                ),
                title: Text("flutter course"),
                value: "flutter",
                groupValue: MyGroupeValue,
                onChanged: (value) {
                  setState(
                    () {
                      MyGroupeValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Icon(
                  Icons.school,
                  color: Colors.grey,
                ),
                title: Text("fullstack course"),
                value: "fullstack",
                groupValue: MyGroupeValue,
                onChanged: (value) {
                  setState(
                    () {
                      MyGroupeValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Icon(
                  Icons.school,
                  color: Colors.grey,
                ),
                title: Text("quality assurance course"),
                value: "quality assurance",
                groupValue: MyGroupeValue,
                onChanged: (value) {
                  setState(
                    () {
                      MyGroupeValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Icon(
                  Icons.school,
                  color: Colors.grey,
                ),
                title: Text("java development course"),
                value: "java development",
                groupValue: MyGroupeValue,
                onChanged: (value) {
                  setState(
                    () {
                      MyGroupeValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              Container(
                child: Text(
                  "Take  your opportunity to get ajob and have  in a professional manner and distinctive skills",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "Combo-Regular"),
                ),
              ),
              Divider(
                height: 60,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                child: Text("fill next opition"),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, () {
                      return Home();
                    });
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
