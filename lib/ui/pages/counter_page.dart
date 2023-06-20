

import 'package:base_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),

          Spacer(),

          Text('Stateful Counter', style: TextStyle( fontSize: 20 ),),

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Contador: $counter',
               style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold)),
            ),
          ),
           
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomFlatButtom(
                text: 'Incrementar',
                 onPressed: () => setState(()=> counter ++)),

                 CustomFlatButtom(
                text: 'Decrementar',
                 onPressed: () => setState(()=> counter --)),
             ],
           ),
           Spacer(),
        ],
      )
    );
  }
}