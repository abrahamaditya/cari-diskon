import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String home = "/";
  static String top20Penawaran = "/top20penawaran";
  static String semuaPenawaran = "/semuapenawaran";
  static String tukarPoin = "/tukarpoin";
  static String detailTukarPoin = "/tukarpoin/:id";
  static String detailTop20Penawaran = "/top20penawaran/:id";
  static String detailAllPenawaran = "/semuapenawaran/:id";
  static String detailTrending = "/trending/:id";
  static String detailEkslusif = "/ekslusif/:id";
  static String kategori = "/kategori/:name";
  static String login = "/login";
  static String register = "/register";
  static String semuaToko = "/toko";
  static String contactUs = "/contactus";
  static String detailToko = "/toko/:id";
  static String search = "/pencarian/:value";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });
    router.define(
      home,
      handler: homeHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      top20Penawaran,
      handler: top20PenawaranHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailTop20Penawaran,
      handler: detailTop20PenawaranHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailAllPenawaran,
      handler: detailAllPenawaranHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      kategori,
      handler: kategoriHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      semuaPenawaran,
      handler: semuaPenawaranHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      tukarPoin,
      handler: tukarPoinHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailTukarPoin,
      handler: detailTukarPoinHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      semuaToko,
      handler: semuaTokoHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailToko,
      handler: detailTokoHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailTrending,
      handler: detailTrendingHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      detailEkslusif,
      handler: detailEkslusifHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      login,
      handler: loginHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      register,
      handler: registerHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      search,
      handler: searchHandler,
      transitionType: TransitionType.none,
    );

    router.define(
      contactUs,
      handler: contactUsHandler,
      transitionType: TransitionType.none,
    );
  }
}
