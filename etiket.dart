  

import 'package:flutter/material.dart';

  Widget label(String text){
  
  return Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0XFFE0ECF8)),
          child: Text(
            text,
            style: TextStyle(color: Color(0XFF1F53E4), fontSize: 12),
          ),

          
        );

}