import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:neo_ft/models/NFT.dart';

/*

    FocusScope.of(context).unfocus();

    key: PageStorageKey(key),

    flutter clean
    flutter build appbundle

    Fluttertoast.showToast(
        msg: "TODO",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0
    );
*/

const ks1="assets/icons/";
const ks2="assets/images/";
const kc1=Color(0xFF0A101E);
const kc2=Color(0xFF133246);
const kc3=Color(0xFFEEF978);
const kc4=Color(0xFFD1F85E);

List<NFT> LIS=[
  NFT('n7.jpg','','',''),
  NFT('n9.jpg','2.231 ETH','20:10','tyronejkd universe'),
  NFT('n8.jpg','','',''),
  NFT('n2.jpg','','',''),
  NFT('n3.jpg','','',''),
  NFT('n4.jpg','','',''),
  NFT('n5.jpg','','',''),
  NFT('n6.jpg','','',''),
  NFT('n1.jpg','','',''),
];

DateTime backbuttonpressedTime;

void onWillPopExit() {
  DateTime currentTime = DateTime.now();

  bool backButton = backbuttonpressedTime == null || currentTime.difference(backbuttonpressedTime) > Duration(seconds: 2);

  if(backButton) {
    backbuttonpressedTime = currentTime;

    Fluttertoast.showToast(
        msg: "Veuillez cliquer de nouveau sur Retour pour quitter",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0
    );
  } else exit(0);
}