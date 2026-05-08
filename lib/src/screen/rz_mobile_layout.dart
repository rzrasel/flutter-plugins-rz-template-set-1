import 'package:flutter/material.dart';

class RzMobileLayout extends StatelessWidget {
  const RzMobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: body ?? const SizedBox(),
    );
  }
}