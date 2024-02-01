import 'package:flutter/material.dart';



class AnasayfaUrunKategoriWidget extends StatefulWidget{

  const AnasayfaUrunKategoriWidget({
    super.key,


    required this.resimAdresi,
     required this.baslik,
    required this.indirimOrani,
   required this.upto,
    required this.indirim,
  });
 

 final String baslik;
  final String resimAdresi;
 final String indirim;
  final double indirimOrani;
 final bool upto;
  
  @override
  State createState() => _AnasayfaUrunKategoriWidgetState();


  

}
class _AnasayfaUrunKategoriWidgetState extends State<AnasayfaUrunKategoriWidget>{

  @override
  Widget build(BuildContext context){
    return Card(
      child:Column(
        children: [
            Image.asset(
              widget.resimAdresi,height: 130,
            ),
            Text(widget.baslik),
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
                                child: Text(widget.upto? "Upto  ${widget.indirimOrani}% OFF": " ${widget.indirim}% OFF",
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





      ],)
    );
  }
}