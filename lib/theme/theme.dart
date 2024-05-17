import 'package:flutter/material.dart';
import "package:test_widgetbook/theme/app_theme_data.dart";

class AppTheme extends InheritedWidget {
  final AppThemeData data;

  const AppTheme({
    required this.data,
    required Widget child,
    super.key,
  }) : super(
          child: child,
        );

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
