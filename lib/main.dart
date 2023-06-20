import 'package:base_web/locator.dart';
import 'package:base_web/router/router.dart';
import 'package:flutter/material.dart';

import 'package:base_web/ui/layout/main_layout_page.dart';


import 'package:base_web/services/navigation_service.dart';


void main() {
  
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
  
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/',
      /*routes: {
        '/stateful': (_) => CounterPage(),
        '/provider': (_) => CounterProviderPage(),

      },*/
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey ,
      //navigationService.navigatorKey,
      builder: (context, child) {
        return MainLayoutaPage(child: child ?? Container());
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}