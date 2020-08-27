class Avm {
  bool fenerium;
  bool burgerKing;
  bool sinema;
  bool koton;
  bool mavi;

  String ad;
  int siralama=0;
  List<int> olmayanlar = [-1, -1, -1, -1, -1];
  int konum;
  Avm(String ad, bool burgerKing, bool sinema, bool koton, bool mavi,
      bool fenerium, int konum) {
    this.burgerKing = burgerKing;
    this.sinema = sinema;
    this.koton = koton;
    this.mavi = mavi;
    this.fenerium = fenerium;
    this.ad = ad;
    this.konum = konum;
  }

  int mesafe(int b) {
    int k = b - this.konum;
    if (k < 0) {
      k = 0 - k;
    }
    return k;
  }

  final List<String> brands = [
    "BurgerKing",
    "Sinema",
    "Koton",
    "Mavi",
    "Fenerium",
  ];
  List<String> get brandList {
    return brands;
  }
}
