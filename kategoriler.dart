import 'package:appeticaret/components/header.dart';
import 'package:appeticaret/components/kategori.dart';
import 'package:flutter/material.dart';

import 'components/bottomnavigationbar.dart';

class kategorilersayfasi extends StatelessWidget {

          //kategoriler kısmını yaparken backend düşünerek yapmalıyız. veriler netten data olarak  gelecekmiş gibi düşünmeliyiz
          //ve buna bağlı olarak kategorilerimizi listview ile kurmalıyız  
  final List<String> kategoriler = [
    "Tüm Ürünler ",
    "Bilgisayarlar",
    "Aksesuarlar",
    "Akıllı Telefonlar",
    "Akıllı Ürünler",
    "Ev Aletleri",
  ];
  @override
  Widget build(BuildContext context) {
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
            //header
            header("Kategoriler", context),
            SizedBox(
              height: 16,
            ),
            // kategoriler
            Expanded(
              child: ListView(
                  children: kategoriler
                      .map((String title) => buildkategori(title, context))
                      .toList()),
            ),
          ],
        ),

        //Kategoriler  Ve en sonda button navigatıon bar ekleyecegiz
      ),

      //buttomnagvigation
      buttomnavigationbar("search"),
    ])));  
  }
}

Widget buildkategori(String title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return kategoripage(title);
      }));
    },
    child: Container(
      //katergoriler butonlarımızın büyüklüğü
      padding: EdgeInsets.all(24),

      width: double.infinity,

      //margin ile kategoriler arası boşluk sağladıkk

      margin: EdgeInsets.all(24),

      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4)),
          ]),

      child: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0XFF0A1034)),
      ),
    ),
  );
}
