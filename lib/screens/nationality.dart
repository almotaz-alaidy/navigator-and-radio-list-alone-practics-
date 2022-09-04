import 'package:flutter/material.dart';
import 'package:lec/main.dart';

class Nantionality extends StatefulWidget {
  const Nantionality({super.key});

  @override
  State<Nantionality> createState() => _NantionalityState();
}

class _NantionalityState extends State<Nantionality> {
  String GroupValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "nationality",
            style: TextStyle(fontSize: 40, color: Colors.grey),
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
                  "please enter your nationality ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://st.depositphotos.com/1290924/3248/i/450/depositphotos_32483817-stock-photo-flag-of-palestine.jpg")),
                title: Text("palestine"),
                value: "palestine",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://jordan-travel.com/wp-content/uploads/2022/04/Flag-of-Jordan-1.jpg")),
                title: Text("jordan"),
                value: "jprdan",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/3513353.jpg")),
                title: Text("syria"),
                value: "syria",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),

              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://w0.peakpx.com/wallpaper/456/597/HD-wallpaper-iran-flag.jpg")),
                title: Text("iran"),
                value: "iran",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),

              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://besthqwallpapers.com/Uploads/29-12-2020/149489/thumb2-russian-flag-4k-silk-wavy-flags-european-countries-national-symbols.jpg")),
                title: Text("Russia"),
                value: "Russia",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              RadioListTile(
                secondary: Image(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/3189860.jpg")),
                title: Text("lebanon"),
                value: "lebanon",
                groupValue: GroupValue,
                onChanged: (value) {
                  setState(
                    () {
                      GroupValue = value.toString();
                    },
                  );
                },
              ),
              Divider(
                height: 20,
              ),
              Container(
                child: Text(
                  "you have to be frome one of these country ",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),

              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, () {
                      return Home();
                    });
                  });
                },
                child: Text("fill next opition"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
