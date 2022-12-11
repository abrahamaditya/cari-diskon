import 'package:caridiskon/page/contact_us_page.dart';
import 'package:caridiskon/page/detail_semua_penawaran_page.dart';
import 'package:caridiskon/page/detail_top_20_penawaran_page.dart';
import 'package:caridiskon/page/detail_tukar_poin_page.dart';
import 'package:caridiskon/page/login_page.dart';
import 'package:caridiskon/page/home_page.dart';
import 'package:caridiskon/page/kategori_page.dart';
import 'package:caridiskon/page/register_page.dart';
import 'package:caridiskon/page/search_page.dart';
import 'package:caridiskon/page/semua_penawaran_page.dart';
import 'package:caridiskon/page/semua_toko_page.dart';
import 'package:caridiskon/page/toko_page.dart';
import 'package:caridiskon/page/top_20_penawaran_page.dart';
import 'package:caridiskon/page/tukar_poin_page.dart';
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

var semuaPenawaranHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SemuaPenawaranPage();
});

var tukarPoinHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return TukarPoinPage();
});

var semuaTokoHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SemuaTokoPage();
});

var detailTokoHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailTokoPage(id: data);
  },
);

var searchHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["value"]![0];
    return SearchPage(value: data);
  },
);

var kategoriHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["name"]![0];
    return KategoriPage(name: data);
  },
);

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
var detailTop20PenawaranHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailTop20PenawaranPage(id: data);
  },
);

var detailAllPenawaranHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailAllPenawaranPage(id: data);
  },
);

var detailTukarPoinHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailAllPenawaranPage(id: data);
  },
);

var detailTrendingHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailAllPenawaranPage(id: data);
  },
);

var detailEkslusifHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    String data = params["id"]![0];
    return DetailAllPenawaranPage(id: data);
  },
);

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return LoginPage();
});

var registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RegisterPage();
});

var contactUsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ContactUsPage();
});
