import 'package:flutter/material.dart';
import 'package:lec/main.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String MyGroupeValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "gender",
            style: TextStyle(fontSize: 40, color: Colors.grey),
          ),
          backgroundColor: Color.fromARGB(255, 192, 77, 77),
        ),
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
                child: Text(
                  "please enter your gender ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              RadioListTile(
                secondary: Icon(Icons.man),
                title: Text("Male"),
                value: "male",
                groupValue: MyGroupeValue,
                onChanged: (value) {
                  setState(() {
                    MyGroupeValue = value.toString();
                  });
                },
              ),
              Divider(
                height: 40,
              ),
              RadioListTile(
                secondary: Icon(Icons.woman),
                title: Text("Female"),
                value: "female",
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
                height: 40,
              ),
              Container(
                child: Text(
                  "A study published in the Journal of Cancer found that gay men were 1.9 times more likely to report cancer than men who had sex with women, and that gay and bisexual women were 1.9 times more likely to report poor health or slightly better than poor health. 2.0 times and 2.3 times higher, respectively, compared to women who had cancer survivors who had sex with men [19], and in a related interview, the study's lead researcher, Dr. . Examples of non-AIDS related cancers were: “anal, lung, testicular, and Hodgkin’s lymphoma.",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  });
                },
                child: Text("fill next opition"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
