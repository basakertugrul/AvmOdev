import 'package:flutter/material.dart';

class Avm {
  bool fenerium; //= "Fenerium";
  bool burgerKing; //= "BurgerKing";
  bool sinema; //= "Sinema";
  bool koton; //= "Koton";
  bool mavi; //= "Mavi";
  bool mango; //= "Mango";
  bool migros; //= "Migros";

  String ad;

  Avm({
    @required this.ad,
    @required this.fenerium,
    @required this.burgerKing,
    @required this.sinema,
    @required this.koton,
    @required this.mavi,
    @required this.mango,
    @required this.migros,
  });

  final List<String> brands = [
    "Fenerium",
    "BurgerKing",
    "Sinema",
    "Koton",
    "Mavi",
    "Mango",
    "Migros",
  ];
  List<String> get brandList {
    return brands;
  }
}
