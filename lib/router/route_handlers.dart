// Handlers
  import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/view_404.dart';

final Handler counterHandler = Handler(
    handlerFunc: ( context, params) {
        print( params['base']? [0] );
      return CounterView( base: params['base']? [0] ?? '5' );
      });

    final Handler counterProviderHandler = Handler(
        handlerFunc: ( context, params)  {
          
          return CounterProviderView( base: params['q']? [0] ?? '10' );}
      );

      final Handler dashboardUserHandler = Handler(
    handlerFunc: ( context, params)  {
      print(params);
      return View404();}
  );

    //404
    final Handler pageNotFound = Handler(
    handlerFunc: ( _, __) => View404()
  );