import 'package:flutter/material.dart';

Widget buttomnavigationbar(String page){

return 


    Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -3),
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 10)
                  ],
                  color: Color(0XFFEFF5FB),
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildNavIcon(icondata: Icons.home_filled, active: page =="home"),
                    buildNavIcon(icondata: Icons.shop, active: page=="cart"),
                    buildNavIcon(icondata: Icons.search, active: page =="search"),
                    buildNavIcon(icondata: Icons.person, active: page=="profile"),
                  ],
                ),
              ),
            );

}

Widget buildNavIcon({@required IconData? icondata, @required bool? active}) {
  return

      //hangi sayfa içerisinde isek o sayfanın rengı mavi olucaktır diğerleri siyah olucaktır
      Icon(icondata,
          size: 18, color: Color(active! ? 0XFF0001FC : 0X0FF0A1034));
}