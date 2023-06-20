

import 'package:base_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key, required this.base});

  final String base;

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 10;

   @override
  void initState() {
    super.initState();
    if( int.tryParse(widget.base) != null)
    counter = int.parse(widget.base);
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

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
      );
  }
}