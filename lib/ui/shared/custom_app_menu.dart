


import 'package:base_web/services/navigation_service.dart';
import 'package:base_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {

    print('AppBar Creado');

    return LayoutBuilder(
      builder: ( _ , BoxConstraints constraints) =>
         ( constraints.maxWidth > 520)
        ? _TableDesktopMenu()
        : _MobileMenu()
      
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButtom(text: 'Contador Stateful',
           // onPressed: ()=> Navigator.pushNamed(context, '/stateful'), Forma tradicional
           onPressed: ()=> locator<NavigationService>().navigateTo('/stateful'),
            // navigationService.navigateTo('/stateful'),
            color: Colors.black,),
            
            SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Contador Provider',
           // onPressed: ()=> Navigator.pushNamed(context, '/provider'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,),

            SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Otra Página',
           //onPressed: ()=> Navigator.pushNamed(context, '/abc'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,),

          SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Stateful 100',
           //onPressed: ()=> Navigator.pushNamed(context, '/abc'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.black,),

            SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Provider 200',
           //onPressed: ()=> Navigator.pushNamed(context, '/abc'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/provider?q=200'),
            color: Colors.black,),


        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButtom(text: 'Contador Stateful',
           // onPressed: ()=> Navigator.pushNamed(context, '/stateful'), Forma tradicional
           onPressed: ()=> locator<NavigationService>().navigateTo('/stateful'),
            // navigationService.navigateTo('/stateful'),
            color: Colors.black,),
            
            SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Contador Provider',
           // onPressed: ()=> Navigator.pushNamed(context, '/provider'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,),


            SizedBox(width: 10,),
            
          CustomFlatButtom(text: 'Otra Página',
           //onPressed: ()=> Navigator.pushNamed(context, '/abc'),
           onPressed: ()=> locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,),
        ],
      ),
    );
  }
}