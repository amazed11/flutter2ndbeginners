import 'package:flutter/material.dart';

class WorkDetailsScreen extends StatelessWidget {
  WorkDetailsScreen({Key? key, this.work, this.desc}) : super(key: key);

  final String? work;
  final String? desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$work"),
              Text("$desc"),
            ],
          ),
        ),
      ),
    );
  }
}
