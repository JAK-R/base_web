

import 'package:base_web/ui/views/counter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;


import '../ui/views/counter_provider_view.dart';
import '../ui/views/view_404.dart';

class RouteGenerator{

  static Route<dynamic> generateRoute( RouteSettings settings){

    switch( settings.name) {

      /*case '/stateful':
        return MaterialPageRoute(
          settings: RouteSettings(name: '/stateful'),
          builder: (_) => CounterPage() );*/

      case '/stateful': 
        return _fadeRoute( CounterView( base: '5'  ), '/stateful');

        /*case '/provider':
        return MaterialPageRoute(
          settings: RouteSettings(name: '/provider'),
          builder: (_) => CounterProviderPage());*/

          case '/provider': 
        return _fadeRoute( CounterProviderView( base: '5'), '/provider');

        /*default:
          return MaterialPageRoute(
           settings: RouteSettings(name: '/404'),
            builder: (_) => Page404());*/

            default:
            return  _fadeRoute( View404(), '/404');

    }

  }

  static PageRoute _fadeRoute ( Widget child, String routeName){

    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb) ?
      FadeTransition(opacity: animation, child: child,)
       : CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: __, child: child, linearTransition: true )
      );

  }

}