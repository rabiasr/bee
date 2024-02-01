import 'dart:async';

import 'package:bee_store/main.dart';
import 'package:flutter/material.dart';
import 'package:bee_store/parcalar/anasayfa_urun_kategori_widget.dart';
import 'package:bee_store/parcalar/anasayfa_urun_widget.dart';

class Dosya extends StatefulWidget {
  const Dosya({Key? key}) : super(key: key);

  @override
  State createState() => DosyaState();
}

class DosyaState extends State<Dosya> {
  late Duration _timeUntilTarget;
  //pageView conterller değişkeni
  final PageController controller = PageController(initialPage: 0);
  //pageView in bulunduğu sayfayı kontol için değişken
  int currentPage = 0;
  //slider noktaları
  late Color dot1 = const Color.fromRGBO(29, 78, 216, 1);
  late Color dot2 = Colors.grey;
  late Color dot3 = Colors.grey;
  late Color dot4 = Colors.grey;
  late Color dot5 = Colors.grey;
  //Slider otomatik kayması için sayaç
  int sayac = 0;

  @override
  void initState() {
    super.initState();

    //Hedef an
    DateTime targetDate = DateTime(2024, 2, 30, 11);

    //Tekrar dedin sayaç(zamana bağlı işlemler için)
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        int nextPage = (controller.page?.round() ?? 0) + 1;
        if (nextPage > 4) {
          nextPage = 0;
        }
        if (sayac == 8) {
          controller.animateToPage(nextPage,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
          sayac = 0;
        }
        sayac++;
        _timeUntilTarget = targetDate.difference(DateTime.now());
      });
    });

    //Hedef ana kalan sürenin hesaplandığı yer
    _timeUntilTarget = targetDate.difference(DateTime.now());

    // Sayfa değiştiği andaki işlemler
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
        switch (currentPage) {
          case 0:
            dot1 = const Color.fromRGBO(29, 78, 216, 1);
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 1:
            dot1 = Colors.grey;
            dot2 = const Color.fromRGBO(29, 78, 216, 1);
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 2:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = const Color.fromRGBO(29, 78, 216, 1);
            dot4 = Colors.grey;
            dot5 = Colors.grey;
          case 3:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = const Color.fromRGBO(29, 78, 216, 1);
            dot5 = Colors.grey;
          case 4:
            dot1 = Colors.grey;
            dot2 = Colors.grey;
            dot3 = Colors.grey;
            dot4 = Colors.grey;
            dot5 = const Color.fromRGBO(29, 78, 216, 1);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                   
                );
              },
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: Image.asset(
                  "varliklar/notification.png",
                  width: 24.5,
                  height: 24.5,
                ),
                onPressed: () {},
              ),
              IconButton(
                  icon: Image.asset(
                    "varliklar/bag.png",
                    width: 24.5,
                    height: 24.5,
                  ),
                  onPressed: () {})
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
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
                //  padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
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
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),
              //Slider
              SizedBox(
                width: 360,
                height: 154,
                child: PageView(
                  controller: controller,
                  children: <Widget>[
                    Center(
                      child: Image.asset("varliklar/slider1.png"),
                    ),
                    Center(
                      child: Image.asset("varliklar/slider2.jpg"),
                    ),
                    Center(
                      child: Image.asset("varliklar/slider3.jpg"),
                    ),
                    Center(
                      child: Image.asset("varliklar/slider4.jpg"),
                    ),
                    Center(
                      child: Image.asset("varliklar/slider5.jpg"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: dot1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: dot2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: dot3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: dot4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: dot5,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                color: const Color.fromRGBO(246, 246, 246, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: Row(
                          children: [
                            Text(
                              "Deal of the day",
                              style: TextStyle(
                                color: Color(0xFF1F2937),
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                height: 0.11,
                                letterSpacing: 0.07,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "View All ->",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                height: 0.12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14.0, vertical: 2),
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 239, 68, 68),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "${_timeUntilTarget.inDays} DAY ${_timeUntilTarget.inHours % 24} HRS ${_timeUntilTarget.inMinutes % 60} MIN ${_timeUntilTarget.inSeconds % 60} SEC",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: const Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            AnasayfaUrunKategoriWidget(
                                                resimAdresi:
                                                    "varliklar/kosu.png",
                                                baslik: "Running Shoes",
                                                indirimOrani: 40,
                                                upto: true,
                                                indirim: ""),
                                            Spacer(),
                                            AnasayfaUrunKategoriWidget(
                                                resimAdresi:
                                                    "varliklar/sneaker.png",
                                                baslik: "Sneakers",
                                                indirimOrani: 0,
                                                upto: false,
                                                indirim: " 40-60 "),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          children: [
                                            AnasayfaUrunKategoriWidget(
                                                resimAdresi:
                                                    "varliklar/saat.png",
                                                baslik: "Wrist Watches",
                                                indirimOrani: 40,
                                                upto: true,
                                                indirim: ""),
                                            Spacer(),
                                            AnasayfaUrunKategoriWidget(
                                                resimAdresi:
                                                    "varliklar/bluetooth.png",
                                                baslik: "Bluetooth Speakers",
                                                indirimOrani: 0,
                                                upto: false,
                                                indirim: " 40-60 "),
                                          ],
                                        )
                                      ],
                                    )))),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Hot Selling Footwear",
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View All -->",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    )
                  ],
                ),
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: AnasayfaUrunWidget(
                      resimAdresi: "varliklar/adidas.jpg",
                      baslik: "Adidas white sneakers for men",
                      usdFiyat: 68,
                      indirimOrani: 50,
                      top: true,
                      rating: 4.8,
                      yorum: 692,
                      ilkFiyat: 136,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: AnasayfaUrunWidget(
                      resimAdresi: "varliklar/nike.jpg",
                      baslik: "Nike black running shoes for men",
                      usdFiyat: 75,
                      indirimOrani: 20,
                      top: false,
                      rating: 4.2,
                      yorum: 421,
                      ilkFiyat: 90,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: AnasayfaUrunWidget(
                      resimAdresi: "varliklar/nikerenkli.jpg",
                      baslik: "Nike sky blue & white Sneakers",
                      usdFiyat: 137.5,
                      indirimOrani: 35,
                      top: true,
                      rating: 4.7,
                      yorum: 700,
                      ilkFiyat: 200,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Recommended for you",
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View All -->",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    )
                  ],
                ),
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: AnasayfaUrunWidget(
                        resimAdresi: "varliklar/allen.png",
                        baslik: "Allen Solly Regular fit cotton shirt ",
                        usdFiyat: 35,
                        indirimOrani: 15,
                        top: true,
                        rating: 4.4,
                        yorum: 412,
                        ilkFiyat: 40.25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: AnasayfaUrunWidget(
                        resimAdresi: "varliklar/calvin.png",
                        baslik: "Calvin Clein Regular fit slim fit shirt",
                        usdFiyat: 52,
                        indirimOrani: 20,
                        top: false,
                        rating: 4.2,
                        yorum: 214,
                        ilkFiyat: 62.4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: AnasayfaUrunWidget(
                        resimAdresi: "varliklar/hm.png",
                        baslik: "H&M Regular fit cotton shirt",
                        usdFiyat: 68,
                        indirimOrani: 10,
                        top: true,
                        rating: 4,
                        yorum: 512,
                        ilkFiyat: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          drawer: Drawer(
             child: ListView(children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("varliklar/ProfilPhoto1.jpg")),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            "David Guatta",
                          ),
                          Text("    +91-999999999")
                        ],
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.category),
                title: Text("Shop by Categories"),
              ),
              const ListTile(
                leading: Icon(Icons.access_time),
                title: Text("My Order"),
              ),
              const ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text("Favourites"),
              ),
              const ListTile(
                leading: Icon(Icons.live_help_outlined),
                title: Text("FAQs"),
              ),
              const ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text("Addresses"),
              ),
              const ListTile(
                leading: Icon(Icons.credit_card_rounded),
                title: Text("Saved Cards"),
              ),
              const ListTile(
                leading: Icon(Icons.insert_drive_file_outlined),
                title: Text("Terms & Conditions"),
              ),
              const ListTile(
                leading: Icon(Icons.privacy_tip_outlined),
                title: Text("Privacy Policy"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color.fromARGB(50, 25, 155, 120),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
                backgroundColor: Color.fromARGB(50, 25, 155, 120),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: "Orders",
                backgroundColor: Color.fromARGB(50, 25, 155, 120),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                label: "Profile",
                backgroundColor: Color.fromARGB(50, 25, 155, 120),
              ),
            ],
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          ),
        ));
      
  }
}
