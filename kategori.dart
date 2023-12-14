import 'package:appeticaret/components/bottomnavigationbar.dart';
import 'package:appeticaret/components/header.dart';
import 'package:appeticaret/productdetail.dart';
import 'package:flutter/material.dart';

class kategoripage extends StatelessWidget {
  // const kategoripage({Key? key}) : super(key: key);

String categoryTitle;

kategoripage(this.categoryTitle);

  List<Map> products = [
    {
      "isim": "Macbook Pro 1 ",
      "fotoğraf": "assets/images/mac.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "Macbook Pro 2 ",
      "fotoğraf": "assets/images/mac 2.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "iPhone 14 Pro",
      "fotoğraf": "assets/images/iphone14.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "Monster  Notebook ",
      "fotoğraf": "assets/images/monster.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "Akıllı Saat",
      "fotoğraf": "assets/images/akllısaaat.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "Monitör",
      "fotoğraf": "assets/images/mac.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "Xiaomi Redmi  Note 7",
      "fotoğraf": "assets/images/mac.jpg",
      "fiyat": "40000 TL "
    },
    {
      "isim": "iPhone 5 SE ",
      "fotoğraf": "assets/images/mac.jpg",
      "fiyat": "40000 TL "
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //header

          header(categoryTitle, context),
          SizedBox(
            height: 10,
          ),
          //içerikler
    SizedBox(height: 22,),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              children: products.map((Map product) {
                return buildContent(
                    product["isim"], product["fotoğraf"], product["fiyat"], context);
              }).toList(),
            ),
          )
        ]),
      ),
      //bottom navigatıonbar
        buttomnavigationbar("search"),
      ])));
  }
}

Widget buildContent(String title, String photourl, String price, context) {

//kategori sayfasındaki bi ürüne tıklandığında o ürünün olduğu sayfaya ulaşabilmeyi sağliycak

  return GestureDetector(onTap: (){

     Navigator.push(context, MaterialPageRoute(builder: (context) {
        return detailpage(title);


     }));
  },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 17,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16))
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Image.asset(photourl),
          SizedBox(height: 10,),
  
  //Expanded(child: Container(),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                " $price TL",
                style: TextStyle(
                    color: Color(0XFF0001FC),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height:18 ,)
            ],
          ),
        ],
      ),
    ),
  );
}
