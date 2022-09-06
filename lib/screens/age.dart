import 'package:flutter/material.dart';
import 'package:lec/main.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  String MyGroupValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "age",
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
                    "choose your age ",
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
                  secondary: Icon(Icons.person),
                  title: Text("18 years old"),
                  value: "18",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("19 years old"),
                  value: "19",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("20 years old"),
                  value: "20",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("21 years old"),
                  value: "21",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("22 years old"),
                  value: "22",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("23 years old"),
                  value: "23",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(height: 20),
                RadioListTile(
                  secondary: Icon(Icons.person),
                  title: Text("24 years old"),
                  value: "24",
                  groupValue: MyGroupValue,
                  onChanged: (value) {
                    setState(
                      () {
                        MyGroupValue = value.toString();
                      },
                    );
                  },
                ),
                Divider(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "to rigist you your age have to be between thees ages",
                    style: TextStyle(fontFamily: "Combo-Regular"),
                  ),
                ),
                Divider(
                  height: 1,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  child: Text("fill next opition"),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(
                        context,
                        () {
                          Home();
                        },
                      );
                    });
                  },
                )
              ],
            )),
      ),
    );
  }
}
