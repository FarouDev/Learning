import 'package:flutter/material.dart';

void main() => runApp(fatma());
// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class fatma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text("Home"),
                backgroundColor: Colors.yellow[900],
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.account_circle_rounded),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {

              })
        ])));
  }
}
