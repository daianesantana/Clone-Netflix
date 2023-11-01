import 'package:flutter/material.dart';
import 'package:netflix/widgets/home.dart';
import 'package:netflix/widgets/login.dart';
import 'package:netflix/widgets/perfilAnabi.dart';
import 'package:netflix/widgets/perfilBianca.dart';
import 'package:netflix/widgets/reproduzir.dart';
import 'package:netflix/widgets/reproduzirGinny.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Login(),
      '/home':(context) => Home(),
      '/anabi':(context) => Anabi(),
      '/bianca':(context) => Bianca(),
      '/reproduzir':(context) => Reproduzir(),
      'reproduzirginny':(context) => ReproduzirGinny()
    },
  ));
}