// Flutter Library
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String home = "/";
  static String top20Penawaran = "/:route";
  static String detailPenawaran = "/:route/:id";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });
    router.define(home,
        handler: homeHandler,
        transitionType: TransitionType.inFromLeft,
        transitionDuration: const Duration(milliseconds: 100));

    router.define(top20Penawaran,
        handler: top20PenawaranHandler,
        transitionType: TransitionType.inFromLeft,
        transitionDuration: const Duration(milliseconds: 100));

    router.define(detailPenawaran,
        handler: detailPenawaranHandler,
        transitionType: TransitionType.inFromLeft,
        transitionDuration: const Duration(milliseconds: 100));
  }
}
