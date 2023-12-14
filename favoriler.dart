import 'dart:developer';

import 'package:appeticaret/components/header.dart';
import 'package:flutter/material.dart';


import 'components/bottomnavigationbar.dart';
import 'favori-detay.dart';

class favorilerpage extends StatelessWidget {
  List<Map<String,String>>  products = [
    {"isim": "BİLGİSAYAR FANI", "fotoğraf": "assets/images/fan.jpg","fiyat": "250 TL"},
    {
      "isim":"PSE OYUN SETİ",
      "fotoğraf":"assets/images/PSE.jpg",
      "fiyat":"15.000TL"
    },
    {
      "isim":"SOĞUTUCU",
      "fotoğraf": "assets/images/Soğutucu.jpg",
      "fiyat": "240 TL"
    },
    {
      "isim": "Mİ ŞARJ ALETİ",
      "fotoğraf":"assets/images/şarj.jpg",
      "fiyat":"100 TL"
    },
    {
      "isim":"DUVAR SAATİ",
      "fotoğraf": "assets/images/duvarsaat.jpg",
      "fiyat": "120 TL"
    },
    {
      "isim": "SAMSUNG SSD",
      "fotoğraf": "assets/images/ssd.jpg",
      "fiyat": "1200 TL"
    },
    {
      "isim": "TELEVİZYON",
      "fotoğraf": "assets/images/tv.jpg",
      "fiyat": "7500 TL"
    },
    {
      "isim": "AİRPODS PRO 2",
      "fotoğraf": "assets/images/airpodspro.jpg",
      "fiyat": "1500 TL"
    },
    {
      "isim": "IPAD MİNİ",
      "fotoğraf": "assets/images/ipad.jpg",
      "fiyat": "2500 TL"
    },// kısmen olmus tmm ya
    
    {
      "isim": "SLAZENGER SAAT ",
      "fotoğraf": "assets/images/slazenger-saat.jpg",
      "fiyat": "990 TL"
    },
  ];
  @override
  Widget build(BuildContext context) {
    inspect(this);
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //column içindeki degerleri başa ve sona ortaya koyma işlemi yapar ancak column ı listview çevirdiğimiz için crossAxisAlignment e gerek kalmadı
            //    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header("Favoriler", context),
              SizedBox(
                height: 0,
              ),

              //HEADER
              header("Favoriler", context),

              //geri ikonumuz içi  kullandığımız yapı   he ader widgetından dolayı etkisiz  kalmıştır.
              /*  Icon(
              Icons.arrow_back,
              color: Colors.blue.shade900,
               size: 30,
            ), */

              //  İÇERİKLER
              SizedBox(
                height: 10,
              ),

             
              Expanded(
                child: GridView.count(
                  //her satırda kaç adet ürün olacağını bulan kod  parçamız 
                  crossAxisCount: 2,
                  mainAxisSpacing:30,
                  children: products.map((Map product ) {
                    return buildcontent(
                        product["isim"], product["fotoğraf"], product["fiyat"],context);
                  }).toList(),
                ),
            ),

             
              SizedBox(
                height: 30,
              ),

              //Favoriler

              Text(
                "",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),

              SizedBox(
                height: 16,
              ) 

              
            ],
          ),

        ),
        //hangi sayfanın aktif olacağını parametre olarak alabilecek bir metod yazdık. 
  buttomnavigationbar("cart"),


      ]

   // bottom navigation


      )
      )
    );
  }
}

//fotoğraf yazı ve fiyattan oluşan 3 bölümden oluşmaktadır bu widgetımız 

Widget buildcontent(String title , String photourl, String price, context) {
  //tıkladığımız yere gidebilelim diye gesture detectora gerek duyarızz.
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return favoridetay();
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 24,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Icon(Icons.star_border),
        Image.asset(photourl),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0XFF0A1034),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "TL $price",
              style: TextStyle(
                  color: Color(0XFF0001FC),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ]
      ),
    ),
  );
}
