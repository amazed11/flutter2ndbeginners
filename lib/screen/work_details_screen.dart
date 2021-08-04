import 'package:flutter/material.dart';

class WorkDetailsScreen extends StatelessWidget {
  const WorkDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: Text("data"),
      ),
    );
  }
}
