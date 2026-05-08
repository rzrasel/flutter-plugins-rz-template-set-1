import 'package:flutter/material.dart';
import 'package:rz_template_set_1/src/screen/rz_desktop_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_mobile_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_tablet_layout.dart';
import 'package:rz_template_set_1/src/template/rz_responsive_design.dart';

class RzTemplate extends StatelessWidget {
  const RzTemplate({super.key, this.desktop, this.tablet, this.mobile, this.useLayout = true});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RzResponsiveWidget(
        desktop: useLayout ? RzDesktopLayout(body: desktop) : desktop ?? Container(),
        tablet: useLayout ? RzTabletLayout(body: tablet ?? desktop) : tablet ?? Container(),
        mobile: useLayout ? RzMobileLayout(body: mobile ?? desktop) : mobile ?? Container(),
      ),
    );
  }
}