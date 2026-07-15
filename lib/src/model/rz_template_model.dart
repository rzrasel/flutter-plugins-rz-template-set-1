import 'package:flutter/material.dart';

class RzTemplateModel {
  //final Widget? topbar;
  final PreferredSizeWidget? topbar;
  final Widget sidebar;
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  const RzTemplateModel({
    this.topbar,
    required this.sidebar,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });
}