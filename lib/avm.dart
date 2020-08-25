class Avm {
  bool fenerium; //= "Fenerium";
  bool burgerKing; //= "BurgerKing";
  bool sinema; //= "Sinema";
  bool koton; //= "Koton";
  bool mavi; //= "Mavi";

  String ad;
  int siralama;
  List<int> olmayanlar = [-1, -1, -1, -1, -1];
  int konum;
  Avm.d(String ad, bool burgerKing, bool sinema, bool koton, bool mavi,
      bool fenerium, int konum) {
    this.burgerKing = burgerKing;
    this.sinema = sinema;
    this.koton = koton;
    this.mavi = mavi;
    this.fenerium = fenerium;
    this.ad = ad;
    this.konum = konum;
  }
  Avm.s();

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
