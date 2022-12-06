import 'package:caridiskon/page/detail_penawaran_page.dart';
import 'package:caridiskon/page/home_page.dart';
import 'package:caridiskon/page/login_page.dart';
import 'package:caridiskon/page/top_20_penawaran_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});

var top20PenawaranHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return Top20PenawaranPage();
});

// Approach 1
// var detailPenawaranHandler = Handler(
//   handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
//     String data = ModalRoute.of(context!)!.settings.arguments.toString();
//     return DetailPenawaranPage(
//       breadCrumb: data == "null" ? "" : data,
//     );
//   },
// );

// Approach 2
var detailPenawaranHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailPenawaranPage(id: data);
  },
);

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});
