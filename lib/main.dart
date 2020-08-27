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
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.pink[50],
              child: Text(
                xx.finallist.toString(),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> selectedBrands;
final brandsSelected = TextEditingController();

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
