import 'package:flutter/material.dart';
import 'package:rz_template_set_1/rz_template_set_1.dart';
import 'package:rz_template_set_1/src/layout/header/rz_header.dart';
import 'package:rz_template_set_1/src/layout/sidebar/rz_sidebar.dart';

class RzDesktopLayout extends StatelessWidget {
  const RzDesktopLayout({super.key, this.body, required this.templateModel,});

  final Widget? body;
  final RzTemplateModel templateModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //const Expanded(child: RzSidebar()),
          Expanded(child: templateModel.sidebar),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                /// Header
                templateModel.topbar ?? RzHeader(),
                /// Body
                body ?? const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
