import 'package:flutter/material.dart';

class GridViewDemoScreen extends StatelessWidget {
  const GridViewDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Example"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 10.0,
            child: GridTile(
              header: Icon(Icons.account_balance_sharp),
              footer: ActionChip(
                label: Text("Add to cart"),
                onPressed: () {
                  print("added to cart");
                },
              ),
              child: Center(child: Text("$index")),
            ),
          );
        },
      ),
    );
  }
}
