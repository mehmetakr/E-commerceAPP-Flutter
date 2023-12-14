
import 'package:flutter/material.dart';
Widget header(String title,context){
 
 return
  Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(   height: 29,   ),
                //geri ikonumuz bulunacak

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.orange.shade900,
                    size: 27,               
                  ),
                ),
                SizedBox(height: 14,),

                Text(
                 title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0XFF0A1034)),
                ),
    ],
  );






}
