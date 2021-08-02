import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> course = ["SLC", "+2", "Bachelors", "Masters"];
  List<String> instname = [
    "Prativa Higher Secondary School",
    "Soch College of IT",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first CV App"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 3.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Aashbin Sunar",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Full Stack Developer (Software, Web & Mobile)",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Education",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("1"),
                          ),
                          trailing: Text("2015"),
                          title: Text("${course[0]}"),
                          subtitle: Text("${instname[0]}"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("2"),
                          ),
                          trailing: Text("2018"),
                          title: Text("${course[1]}"),
                          subtitle: Text("${instname[0]}"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("3"),
                          ),
                          trailing: Text("2020"),
                          title: Text("${course[2]}"),
                          subtitle: Text("${instname[1]}"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("4"),
                          ),
                          trailing: Text("2023"),
                          title: Text("${course[3]}"),
                          subtitle: Text("${instname[1]}"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
