import 'package:flutter/material.dart';

class RzDesktopLayout extends StatelessWidget {
  const RzDesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Drawer(),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // Header
                Container(
                  width: double.infinity,
                  height: 75,
                  color: Colors.yellow.withAlpha(5),
                ),
                // Body
                body ?? const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}