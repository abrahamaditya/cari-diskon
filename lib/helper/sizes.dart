import 'package:flutter/material.dart';

class Sizes {
  // This class is used for adding size into a widget.
  // Don't use size like this:
  // Container(size: 10); => it's not make a screen or widget responsive
  // You must used like this:
  // Container(size: Sizes.dp4(context)); => it's make a screen or widget responsive

  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static dp1(BuildContext context) {
    return MediaQuery.of(context).size.width / 240;
  }

  static dp2(BuildContext context) {
    return MediaQuery.of(context).size.width / 137;
  }

  static dp3(BuildContext context) {
    return MediaQuery.of(context).size.width / 120;
  }

  static dp4(BuildContext context) {
    return MediaQuery.of(context).size.width / 100;
  }

  static dp5(BuildContext context) {
    return MediaQuery.of(context).size.width / 80;
  }

  static dp6(BuildContext context) {
    return MediaQuery.of(context).size.width / 70;
  }

  static dp7(BuildContext context) {
    return MediaQuery.of(context).size.width / 64;
  }

  static dp8(BuildContext context) {
    return MediaQuery.of(context).size.width / 54;
  }

  static dp9(BuildContext context) {
    return MediaQuery.of(context).size.width / 48;
  }

  static dp10(BuildContext context) {
    return MediaQuery.of(context).size.width / 41;
  }

  static dp12(BuildContext context) {
    return MediaQuery.of(context).size.width / 34;
  }

  static dp14(BuildContext context) {
    return MediaQuery.of(context).size.width / 29;
  }

  static dp16(BuildContext context) {
    return MediaQuery.of(context).size.width / 26;
  }

  static dp18(BuildContext context) {
    return MediaQuery.of(context).size.width / 23;
  }

  static dp20(BuildContext context) {
    return MediaQuery.of(context).size.width / 20;
  }

  static dp22(BuildContext context) {
    return MediaQuery.of(context).size.width / 17;
  }

  static dp24(BuildContext context) {
    return MediaQuery.of(context).size.width / 16;
  }

  static dp25(BuildContext context) {
    return MediaQuery.of(context).size.width / 15;
  }

  static dp28(BuildContext context) {
    return MediaQuery.of(context).size.width / 12;
  }

  static dp30(BuildContext context) {
    return MediaQuery.of(context).size.width / 10;
  }

  static dp33(BuildContext context) {
    return MediaQuery.of(context).size.width / 9;
  }

  static dp36(BuildContext context) {
    return MediaQuery.of(context).size.width / 8;
  }

  static dp40(BuildContext context) {
    return MediaQuery.of(context).size.width / 6.5;
  }

  static dp48(BuildContext context) {
    return MediaQuery.of(context).size.width / 6;
  }

  static dp49(BuildContext context) {
    return MediaQuery.of(context).size.width / 5.5;
  }

  static dp49_5(BuildContext context) {
    return MediaQuery.of(context).size.width / 5;
  }

  static dp50(BuildContext context) {
    return MediaQuery.of(context).size.width / 4.3;
  }

  static dp54(BuildContext context) {
    return MediaQuery.of(context).size.width / 4;
  }

  static dp56(BuildContext context) {
    return MediaQuery.of(context).size.width / 3.5;
  }

  static dp58(BuildContext context) {
    return MediaQuery.of(context).size.width / 3;
  }

  static dp59(BuildContext context) {
    return MediaQuery.of(context).size.width / 2.5;
  }

  static dp60(BuildContext context) {
    return MediaQuery.of(context).size.width / 2;
  }

  static dp72(BuildContext context) {
    return MediaQuery.of(context).size.width / 1.8;
  }

  static dp80(BuildContext context) {
    return MediaQuery.of(context).size.width / 1.5;
  }

  static dp94(BuildContext context) {
    return MediaQuery.of(context).size.width / 1.2;
  }
}
