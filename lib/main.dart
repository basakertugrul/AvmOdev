import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './clb.dart';
import './avm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

Class MyHomePage extends StatelessWidget {
  final Avm avm = new Avm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 77, 229, 1),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("CHART!"),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                    FlatButton(
                      child: Text("Add Transactions"),
                      textColor: Colors.purple,
                      onPressed: () {},
                    )
                  ]),
            ),
          ),
          Column(
           children: avm.brandList.map((tx) {
              return Card(
                  child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                ),
                Text("tx")
              ]));
            }).toList(),
          ),
          Card(
            child: Container(
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
