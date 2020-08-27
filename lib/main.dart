import 'package:flutter/gestures.dart';

import 'clb.dart';
import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var xx = new Clb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 77, 229, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Nerelere gitmek istersiniz?",
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Card(
              elevation: 5,
              borderOnForeground: true,
              child: DropDownField(
                controller: brandsSelected,
                hintText: "Select ",
                enabled: true,
                itemsVisibleInDropdown: 5,
                items: brands,
                labelStyle: TextStyle(fontStyle: FontStyle.italic),
                onValueChanged: (value) {
                  setState(() {
                    selectedBrands.add(value);
                    if (value == "Burger King") {
                      burgerno = true;
                    }
                    if (value == "Sinema") {
                      sinemano = true;
                    }
                    if (value == "Koton") {
                      kotonno = true;
                    }
                    if (value == "Mavi") {
                      mavino = true;
                    }
                    if (value == "Fenerium") {
                      fenerno = true;
                    }

                    xx.chooser(
                        burgerno, sinemano, kotonno, mavino, fenerno, 50);
                  });
                },
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: (selectedBrands).map((tx) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    child: FlatButton(
                      child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.pink[50],
                          child: Text(
                            tx + "    X",
                            style: TextStyle(fontStyle: FontStyle.normal),
                          )),
                      onPressed: () {
                        setState(() {
                          if (tx == "Burger King") {
                            burgerno = false;
                          }
                          if (tx == "Sinema") {
                            sinemano = false;
                          }
                          if (tx == "Koton") {
                            kotonno = false;
                          }
                          if (tx == "Mavi") {
                            mavino = false;
                          }
                          if (tx == "Fenerium") {
                            fenerno = false;
                          }
                          selectedBrands.removeAt(selectedBrands.indexOf(tx));
                          xx.chooser(
                              burgerno, sinemano, kotonno, mavino, fenerno, 50);
                          xx.finalList.add("value");
                          xx.finalList.removeLast();
                        });
                      },
                      color: Colors.pink[50],
                    ),
                  );
                }).toList(),
              ),
            ),
            Column(
              children: (xx.finalList).map((tx) {
                return Card(
                  child: Text(tx),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

var brandsSelected = TextEditingController();
List<String> selectedBrands = ["->"];

List<String> brands = [
  "Gratis",
  "Sinema",
  "Mavi",
  "Fenerium",
  "GS Store",
  "Burger King",
  "H&M",
  "Koton",
  "Köfteci Ramiz",
  "Mc Donald's",
];
bool burgerno = false;
bool sinemano = false;
bool kotonno = false;
bool mavino = false;
bool fenerno = false;
