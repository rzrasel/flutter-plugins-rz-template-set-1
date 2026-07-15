import 'package:flutter/material.dart';

typedef RzTopbarBuilder = PreferredSizeWidget Function(GlobalKey<ScaffoldState> scaffoldKey);

class RzTemplateModel {
  //final Widget? topbar;
  //final PreferredSizeWidget? topbar;
  final RzTopbarBuilder? topbarBuilder;
  final Widget sidebar;
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  const RzTemplateModel({
    //this.topbar,
    this.topbarBuilder,
    required this.sidebar,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  // helper if you still want to pass a static topbar
  PreferredSizeWidget? buildTopbar(GlobalKey<ScaffoldState> key) {
    return topbarBuilder?.call(key);
  }

  /*PreferredSizeWidget? topbarBuilder(GlobalKey<ScaffoldState> key) {
    return topbarBuilder?.call(key);
  }*/
}