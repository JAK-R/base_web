


import 'package:base_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutaPage extends StatelessWidget {
  const MainLayoutaPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(), //TODO: view
            Expanded( child: child),
            Spacer(),
          ],
        ),
      ),
    );
  }
}