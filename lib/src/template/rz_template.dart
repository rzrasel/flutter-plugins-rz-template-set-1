import 'package:flutter/material.dart';
import 'package:rz_template_set_1/src/model/rz_template_model.dart';
import 'package:rz_template_set_1/src/screen/rz_desktop_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_mobile_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_tablet_layout.dart';
import 'package:rz_template_set_1/src/template/rz_responsive_design.dart';

class RzTemplate extends StatelessWidget {
  const RzTemplate({super.key, this.desktop, this.tablet, this.mobile, this.templateModel = const RzTemplateModel(),});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final RzTemplateModel templateModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RzResponsiveWidget(
        desktop: templateModel.useLayout ? RzDesktopLayout(body: desktop) : desktop ?? Container(),
        tablet: templateModel.useLayout ? RzTabletLayout(body: tablet ?? desktop) : tablet ?? Container(),
        mobile: templateModel.useLayout ? RzMobileLayout(body: mobile ?? desktop) : mobile ?? Container(),
      ),
    );
  }
}