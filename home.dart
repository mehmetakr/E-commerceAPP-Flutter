import 'package:appeticaret/components/etiket.dart';
import 'package:appeticaret/favoriler.dart';
import 'package:appeticaret/kategoriler.dart';
import 'package:flutter/material.dart';

import 'components/bottomnavigationbar.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(

                
                //column içindeki degerleri başa ve sona ortaya koyma işlemi yapar ancak column ı listview çevirdiğimiz için crossAxisAlignment e gerek kalmadı
                //    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //BAŞLIK

                  //böyle yaparak widget içine aldık ve daha düzenli olmuş oldu daha basitleştirildi.
                  buildbaslik(),

                  //BANNER

                  buildbanner(),

                  //BUTONLAR
                  Padding(
                    padding: EdgeInsets.only(top: 46),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
//ilk eleman
                        buildnavigation(
                            text: "Kategoriler",
                            icon: Icons.menu,
                            //Bu widget: kategoriler ile kategorilere tıkladığımız anda o sayfaya  yönlendirileceğiz 
                            widget: kategorilersayfasi(),
                            context: context,
                            screenWidth: screenWidth),

// İKİNCİ ELEMAN

                        buildnavigation(
                            text: "Favoriler",
                            icon: Icons.star_border,
                            //Bu widget: kategoriler ile kategorilere tıkladığımız anda o sayfaya  yönlendirileceğiz 
                            widget: favorilerpage(),
                        
                            context: context,
                            screenWidth: screenWidth),

                        //ÜÇÜNCÜ ELEMAN

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey.shade100),
                              child: Icon(
                                Icons.card_giftcard,
                                color: Color(0XFF0001FC),
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hediyeler",
                              style: TextStyle(
                                color: Color(0XFF0001FC),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

//DÖRDÜNCÜ ELEMAN

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey.shade100),
                              child: Icon(
                                Icons.people,
                                color: Color(0XFF0001FC),
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Çok satanlar",
                              style: TextStyle(
                                color: Color(0XFF0001FC),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

//bu sizedbox bize üst kısımdaki butonlarla mesafe koyar
                  SizedBox(height: 40),
                  //SALES TİTLE

                  Text(
                    "Satış",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0XFF0A1034)),
                  ),

                  SizedBox(height: 16),

//SALES ITEMS

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Youphone",
                          photourl: "assets/images/telfn.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSlesItem(
                          text: "kasa",
                          photourl: "assets/images/kasa/jpg",
                          discount: "-50",
                          screenWidth: screenWidth),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem1(
                          text: "Monıtör",
                          photourl: "assets/images/monıtor.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem2(
                          text: "kasa",
                          photourl: "assets/images/PSE/jpg",
                          discount: "-50",
                          screenWidth: screenWidth),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem3(
                          text: "Monıtor",
                          photourl: "assets/images/monitör.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem4(
                          text: "kasa",
                          photourl: "assets/images/akıllısaat/jpg",
                          discount: "-50",
                          screenWidth: screenWidth),
                    ],
                  ),



  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem5(
                          text: "Oyuncu koltuğu",
                          photourl: "assets/images/oyuncukoltuğu.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem6(
                          text: "Kahve makinesi",
                          photourl: "assets/images/kahvemakinesi.jpg",
                          discount: "-50",
                          screenWidth: screenWidth),
                    ],
                  ),


                  
                ],
              ),
            ),

            // container bızım alt taraftakı butonlarımız
            //bottom navıgatıon bar
           

           buttomnavigationbar("home"),
          ],
        ),
      ),
    );
  }
}


Widget buildbaslik() {
//böyle yaparak widget içine aldık ve daha düzenli olmuş oldu daha basitleştirildi.
  return Padding(
    padding: const EdgeInsets.only(top: 24.0), //home yazımızın boyutu ayarladık
    child: Text(
      "Ana Sayfa",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildbanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24),
    child: Container(
      width: double.infinity,
      //container içindeki degerlerimiz(yazılarımızı)padingledik (uzaklık genişlik olarak üst alt))
      padding: EdgeInsets.only(left: 32, right: 24, top: 16, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(6)),

//child olarak içinde 2 satırdan oluşan bir yazı ve bir adet fotoğraf bulunmaktadır. Yani child içindeki row'umuz içinde fotoğraf ve yazı bulunmaktadır.
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //içerisi 2 adet yazıdan oluştuğu için column'ımız vardır.ve içerisinde 2 adet text var
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AirPods Pro 2 ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 4),
            Text(
              "750 ₺",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),

        Image.asset("assets/images/airpodss.jpg"),
      ]),
    ),
  );
}

Widget buildnavigation(
    {@required String? text,
    @required IconData? icon,
    Widget? widget,
    BuildContext? context,
    double? screenWidth}) {
  return GestureDetector(
    onTap: () {      
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueGrey.shade100),
          child: Icon(
            icon,
            color: Colors.blue,
            size: 15,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text!,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
  
Widget buildSalesItem({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

       label(discount!),
        SizedBox(
          height: 22,
        ),

//telefon resmi

        Image.asset("assets/images/telfn.jpg"),

        SizedBox(height: 22),

//telefon adı
        Text("Yuphone",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}

Widget buildSlesItem({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-25%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//kasa resmi

        Image.asset("assets/images/kasa.jpg"),

        SizedBox(height: 22),

//kasa adı
        Text("Kasa", style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}

Widget buildSalesItem1({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-25%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//monıtor resmi

        Image.asset("assets/images/monıtor.jpg"),

        SizedBox(height: 22),

//monıtor adı
        Text("Monıtör",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}

Widget buildSalesItem2({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-25%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//pse resmi

        Image.asset("assets/images/PSE.jpg"),

        SizedBox(height: 22),

//pse adı
        Text("Playstation",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}

Widget buildSalesItem3({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-10%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//akıllı saat resmi

        Image.asset("assets/images/akıllsaat.jpg"),

        SizedBox(height: 22),

//akıllı saat adı
        Text("Akıllı saat",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}

Widget buildSalesItem4({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-35%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//monitör resmi

        Image.asset("assets/images/monitör.jpg"),

        SizedBox(height: 22),

//monitör adı
        Text("Bilgisayar",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}



Widget buildSalesItem5({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-35%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//oyuncu koltugu resmi

        Image.asset("assets/images/oyuncukoltuğu.jpg"),

        SizedBox(height: 22),

//oyuncu koltugu adı


        Text("Oyuncu Koltuğu",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}


Widget buildSalesItem6({
  @required String? text,
  @required String? photourl,
  @required String? discount,
  @required double? screenWidth,
}) {
  return Container(
    width: (screenWidth! - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
   child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//column içerisinde 3 adet bölümümüz var

// %5

          Container(
            padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            "-25%",
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),
        ),
        SizedBox(
          height: 22,
        ),

//monitör resmi

        Image.asset("assets/images/kahvemakinesi.jpg"),

        SizedBox(height: 22),

//monitör adı
        Text("Kahve Makinesi",
            style: TextStyle(fontSize: 18, color: Color(0XFF0A1034))),
      ],
    ),
  );
}
