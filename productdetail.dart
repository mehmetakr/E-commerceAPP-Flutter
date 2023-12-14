
import 'package:appeticaret/components/bottomnavigationbar.dart';
import 'package:appeticaret/components/etiket.dart';
import 'package:appeticaret/components/header.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
// const detailpage({Key? key}) : super(key: key);

  String productTitle;
  //detay sayfasındakı ürüne tıklandığında o ürünün olduğu sayfaya gidecektir...
  detailpage(this.productTitle);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  Color? selectedcolor;

  int? selectedkapasite = 256;
  List<Color> colors = [
    Color(0XFF5214F),
    Colors.amber,
    Colors.red,
    Color(0XFF6F7972),
  ];

  List<int> kapasite = [64, 256, 512];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //header

            //tıklanılan sayfaya gitmiş olucaz bu sayede
            header(widget.productTitle, context),
            SizedBox(
              height: 32,
            ),

            ///label etiketi ile fotoğrafın üstüne new yazısını bastırdık

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView(  
                    children: [
                      //new etiketi
                    //  label("New"),
                      // etiketten sonraki 25 cm lik foto ile arasındakı boşluk
                      SizedBox(
                        height: 0,
                      ),
                            
                      //ürün fotografı
                      Center(child: Image.asset("assets/images/iphone12.jpg")),
                            
                      SizedBox(
                        height: 10,
                      ),
                            
                      //Renk  seçenekleri
                            
                      Text(
                        "Color",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF0A1034)),
                      ),
                            
                      SizedBox(
                        height: 16,
                      ),
                            
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: colors
                              .map((Color color) => coloroption(
                                  color: color,
                                  selected: selectedcolor == color,
                                  ontap: () {
                                    setState(() {
                                      selectedcolor = color;
                                    });
                                  }
                                  )
                                  )
                              .toList()),
                      //Hafıza seçenekleri
                            
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Kapasite",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF0A1034)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: kapasite
                            .map((int number) => kapasiteoption(
                                kapasite: number,
                                selected: selectedkapasite == number,
                                ontap: () {
                                  setState(() {
                                    selectedkapasite == number;
                                  });
                                }))
                            .toList(),
                      ),
                      // Bu iafade yukarıdakı buton vs. ile arasına mesafe koymak için kullanırız
                      SizedBox(
                        height: 32,
                      ),
                            
                      //Sepete ekle butonu
    
                      GestureDetector(
                         onTap: (){
                          print("Ürün sepete eklendi");
                          print("Ürünün ismi : "+widget.productTitle);
                          print("Ürünün rengi : " +selectedcolor.toString());
                          print("Ürünün kapasitesi : "+selectedkapasite.toString()+"GB");

                         },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0XFF1F53E4),
                          ),
                          child: Text(
                            "Sepete Ekle ",textAlign:TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color:   Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(height:100,)
                    ],
                  ),
                ),
              ),
            
          ])),
buttomnavigationbar("SEARCH"),     

 ]
 )
 )
 );
  }
}

Widget coloroption({Color? color, bool? selected, Function()? ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Color(0XFF0002FC), width: selected! ? 3 : 0),
      ),
      width: 23,
      height: 50,
    ),
  );
}

Widget kapasiteoption({int? kapasite, bool? selected, Function()? ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "$kapasite GB",
        style: TextStyle(
          color: Color(selected! ? 0XFF0001FC : 0XFFA7A9BE),
          fontSize: 16,
        ),
      ),
    ),
  );
}
