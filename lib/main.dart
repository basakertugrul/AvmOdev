import 'package:flutter/material.dart';
import './clb.dart';
import './avm.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var x = new Clb();

class _MyHomePageState extends State<MyHomePage> {
  String whatever = "";

  List<bool> myList;

  int konum = 50;

  var avm = Avm.s();

  List _brandsList;

  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _brandsList = [];
  }

  _saveForm() {
    for (int i = 0; i < avm.brands.length; i++) {
      if (_brandsList.contains(avm.brands[i]))
        myList[i] = true;
      else
        myList[i] = false;
    }
    x.chooser(myList[0], myList[1], myList[2], myList[3], myList[4], konum);

    var concatenate = StringBuffer();

    x.finalList.forEach((item) {
      concatenate.write(item);
    });
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        whatever = concatenate.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 77, 229, 1),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  titleText: 'Nereleri ziyaret etmek istersiniz?',
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return 'Lütfen gezmek istediğiniz istediğiniz yerleri seçin';
                    }
                    return null;
                  },
                  dataSource: [
                    {
                      "display": "Burger King",
                      "value": "Burger King",
                    },
                    {
                      "display": "Fenerium",
                      "value": "Fenerium",
                    },
                    {
                      "display": "Mavi",
                      "value": "Mavi",
                    },
                    {
                      "display": "Sinema",
                      "value": "Sinema",
                    },
                    {
                      "display": "Koton",
                      "value": "Koton",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  // required: true,
                  hintText: '',
                  initialValue: _brandsList,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _brandsList = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RaisedButton(
                  child: Text('Kaydet'),
                  onPressed: _saveForm,
                ),
              ),
              Container(padding: EdgeInsets.all(16), child: Text(whatever))
            ],
          ),
        ),
      ),
    );
  }
}
