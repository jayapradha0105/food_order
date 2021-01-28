import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

//  static const Color primecolor = const Color(0xff800080);
//  static const Color secondcolor = const Color(0xffffffff);


  static const Color secondcolor = const Color(0xffff3b1a);
  static const Color orangecolor = const Color(0xffff674d);
  static const Color pinkcolor = const Color(0xffff47aa);
  static const Color babypink = const Color(0xffffe9ec);
  static const Color blackcolor = const Color(0xff000000);
  static const Color primecolor = const Color(0xffffffff);
  static const Color primecolor1 = const Color(0xfff0f0f0);
  static const Color grey = const Color(0xff778899);
  static const Color greycolor = const Color(0xffa9a9a9);


  static const boxGradient = const LinearGradient(
    colors: const [pinkcolor, orangecolor],
    stops: const [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const pinkGradient = const LinearGradient(
    colors: const [babypink, primecolor],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}