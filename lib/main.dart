import 'package:flutter/material.dart';
import 'package:myfirstapp/screen/work_details_screen.dart';

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
    "Pratibha Higher Secondary School",
    "Soch College of IT",
  ];
  List<String> interest = [
    'Exploring Internet',
    'travelling',
    'singing',
    'dancing',
    'Research',
    'Programming',
    'Designing',
    'Machine Learning',
    'Javascript'
  ];

  List<String> work = [
    'Software Development',
    'Mobile App Development',
    'Web Developement',
    'Designing and Branding'
  ];
  List<String> desc = [
    'Build your software at your cost',
    'Make everything on your hand',
    'Public your zone in internet',
    'Try something new eye catching design with brand'
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
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Interests",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Wrap(
                        runSpacing: 10.0,
                        spacing: 10.0,
                        children: List.generate(
                          interest.length,
                          (index) => Chip(
                            avatar: CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              child:
                                  Text("${(interest[index][0]).toUpperCase()}"),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.indigo,
                            label: Text("${(interest[index]).toUpperCase()}"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Column(
                  children: [
                    Text(
                      "Work Showcase",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: work.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WorkDetailsScreen()));
                              },
                              title: Text("${work[index]}"),
                              subtitle: Text(
                                "${desc[index]}",
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://eversoft.company/wp-content/uploads/2021/03/Software-Development-Company-Eversoft-hero-baner.png"),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
