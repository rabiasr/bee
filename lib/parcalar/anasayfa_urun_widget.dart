import 'package:flutter/material.dart';

class AnasayfaUrunWidget extends StatefulWidget {
  const AnasayfaUrunWidget({
    super.key,
    required this.baslik,
    required this.resimAdresi,
    required this.usdFiyat,
    required this.indirimOrani,
    required this.top,
    required this.ilkFiyat,
    required this.rating,
    required this.yorum,


  });

  final String baslik;
  final String resimAdresi;
  final double usdFiyat;
  final double indirimOrani;
  final bool top;
  final double rating;
  final int yorum;
  final double ilkFiyat;
  @override
  State createState() => _AnasayfaUrunWidgetState();

  /* 
  Üstteki fonksiyonun uzun versiyonu
  State createState() {
    return _AnasayfaUrunWidgetState();
  }
   */
}

bool favorideMi = false;
/* String baslik = "Adidas wihite sneakers for men";
String resimAdresi = "varliklar/Adidas1.png";
double usdFiyat = 68.5;
double indirimOrani = 50; */

/*
var
final
const
*/

// access modifier
class _AnasayfaUrunWidgetState extends State<AnasayfaUrunWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
    
      child: Column(
      
        children: [
          Stack(
            children: [
              Container(
                width:200, // Genişliği belirleyin
                height:250, // Yüksekliği belirleyin
                child: Image.asset(
                  widget.resimAdresi,
                                ),
              ),
              widget.top
                  ? Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 227, 116, 47),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Top Seller",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )),
                    )
                  : const SizedBox(),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      favorideMi = !favorideMi;
                    });
                  },
                  icon: favorideMi
                      ? Image.asset(
                          "varliklar/fav.png",
                          scale: 2.5,
                        )
                      : Image.asset("varliklar/favdegil.png", scale: 2.5),
                ),
              ),
            ],
          ),
          Text(widget.baslik,softWrap: true,),
          Row(
            children: [
              Text(
                "\$${widget.usdFiyat}  ",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
               Text(
                "  \$ ${widget.ilkFiyat}   ",
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                "${widget.indirimOrani}% OFF",
                style:
                    const TextStyle(color: Color.fromARGB(255, 216, 119, 40)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "varliklar/rating.png",
                scale: 2.5,
              ),

              Text(
                "  ${widget.rating}  "
              ) ,
              Text(
                "(${widget.yorum}) ",
              style: const TextStyle(
                decoration: TextDecoration.none
              ),
              ) 
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
