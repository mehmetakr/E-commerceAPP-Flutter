import 'package:appeticaret/components/header.dart';
import 'package:flutter/material.dart';

class favoridetay extends StatefulWidget {

   
  State<favoridetay> createState() => _favoridetayState();
}

class _favoridetayState extends State<favoridetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //header

          header("Iphone 11 pro", context),
          SizedBox(
            height: 10
          ),]))
          ])));

  }
}