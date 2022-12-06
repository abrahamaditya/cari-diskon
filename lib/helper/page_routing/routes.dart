import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String home = "/";
  static String top20Penawaran = "/top20penawaran";
  static String detailPenawaran = "/top20penawaran/:id";
  static String login = "/login";

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

    router.define(login,
        handler: loginHandler,
        transitionType: TransitionType.inFromLeft,
        transitionDuration: const Duration(milliseconds: 100));
  }
}
