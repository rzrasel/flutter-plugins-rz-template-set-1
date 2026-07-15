import 'package:flutter/material.dart';
import 'package:rz_template_set_1/src/model/rz_template_model.dart';
import 'package:rz_template_set_1/src/screen/rz_desktop_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_mobile_layout.dart';
import 'package:rz_template_set_1/src/screen/rz_tablet_layout.dart';
import 'package:rz_template_set_1/src/template/rz_responsive_design.dart';

class RzTemplate extends StatelessWidget {
  //const RzTemplate({super.key, required this.sidebar, this.desktop, this.tablet, this.mobile, this.templateModel = RzTemplateModel(sidebar: sidebar),});
  RzTemplate({
    super.key,
    this.topbar,
    required this.sidebar,
    this.desktop,
    this.tablet,
    this.mobile,
    RzTemplateModel? templateModel,
  }) : templateModel =
           templateModel ??
           RzTemplateModel(
             topbar: topbar,
             sidebar: sidebar,
             desktop: desktop,
             tablet: tablet,
             mobile: mobile,
           );

  final PreferredSizeWidget? topbar;
  final Widget sidebar;
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final RzTemplateModel templateModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RzResponsiveWidget(
        desktop: templateModel.useLayout
            ? RzDesktopLayout(body: desktop, templateModel: templateModel,)
            : desktop ?? Container(),
        tablet: templateModel.useLayout
            ? RzTabletLayout(body: tablet ?? desktop, templateModel: templateModel,)
            : tablet ?? Container(),
        mobile: templateModel.useLayout
            ? RzMobileLayout(body: mobile ?? desktop, templateModel: templateModel,)
            : mobile ?? Container(),
      ),
    );
  }
}
