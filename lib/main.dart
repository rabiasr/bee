import 'package:flutter/material.dart';

// Fonksiyon tanımlamak
void main() {
  // Fonksiyon çağırmak
  print("ilk işlem başarılı olarak çalıştırıldı.");

  String name = "Serbay";

  bool isDebug = false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Serbay";

    bool isDebug = false;

    return MaterialApp(
      debugShowCheckedModeBanner: isDebug,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset(
                'varliklar/notification.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'varliklar/bag.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search Anything...",
                  prefixIcon: ImageIcon(AssetImage('varliklar/search.png')),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Color(0xFFD1D5DB),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'varliklar/fashion.png',
                                height: 100,
                                width: 100,
                                
                              ),
                            ),
                            const Text("Fashion"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'varliklar/electronic.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Text("Electronic"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'varliklar/appliances.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Text("Appliances"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'varliklar/beauty.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Text("Beauty"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'varliklar/furniture.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Text("Furniture"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Color(0xFFFFE0B8),
               width: MediaQuery.of(context).size.width ,
                
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2),
             
              child: Image.asset('varliklar/image.png',

              height: 154,
              width:  MediaQuery.of(context).size.width / 2,
              ),
              
           
            ),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

// Veri tipleri
// Değişken tanımlamak
String selamlamaMetni = 'Merhaba Arkadaşlar!';

int sayi = 5;

String isim = "Serbay";
String soyisim = "Özkan";

int yas = 22;

double kilo = 70;

bool askerlikYaptiMi = false;

List<int> okullaGecenYillar = [2013, 2014, 2015, 2016, 2017, 2018, 2019];

Insan serbay = Insan("Serbay", "Özkan", 22, 70, false,
    [2013, 2014, 2015, 2016, 2017, 2018, 2019]);

Ogrenci tuncay = Ogrenci(
  "Tuncay",
  "Özkan",
  22,
  70,
  false,
  [2013, 2014, 2015, 2016, 2017, 2018, 2019],
  "123456",
  "İstanbul Teknik Üniversitesi",
);

class Insan {
  String isim;
  String soyisim;

  int yas;

  double kilo;

  bool askerlikYaptiMi;

  List<int> okullaGecenYillar;

  // Oluşturucu fonksiyon (constructor)
  Insan(this.isim, this.soyisim, this.yas, this.kilo, this.askerlikYaptiMi,
      this.okullaGecenYillar) {
    print("İnsan sınıfı oluşturuldu.");
  }
}

class Ogrenci extends Insan {
  String okulNumara;
  String okulIsmi;

  Ogrenci(
    super.isim,
    super.soyisim,
    super.yas,
    super.kilo,
    super.askerlikYaptiMi,
    super.okullaGecenYillar,
    this.okulNumara,
    this.okulIsmi,
  ) {
    print("Öğrenci sınıfı oluşturuldu.");
  }
}
