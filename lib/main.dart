import 'package:caridiskon/page/home_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'helper/page_routing/application.dart';
import 'helper/page_routing/routes.dart';

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CariDiskon',
      initialRoute: '/',
      onGenerateRoute: Application.router.generator,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
