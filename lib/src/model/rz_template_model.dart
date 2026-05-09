import 'package:flutter/material.dart';

class RzTemplateModel {
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  const RzTemplateModel({
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });
}