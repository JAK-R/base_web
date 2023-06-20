
import 'package:provider/provider.dart';

import 'package:base_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

import '../../providers/counter_provider.dart';
import '../shared/custom_app_menu.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider( '5' ),
      child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),

          Spacer(),

          Text('Provider Counter', style: TextStyle( fontSize: 20 ),),

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Contador: ${ counterProvider.counter}',
               style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold)),
            ),
          ),
           
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomFlatButtom(
                text: 'Incrementar',
                 onPressed: () => counterProvider.increment()),

                 CustomFlatButtom(
                text: 'Decrementar',
                 onPressed: () => counterProvider.decrement()),
             ],
           ),
           Spacer(),
        ],
      )
    );
  }
}