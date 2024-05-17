import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:test_widgetbook/theme/theme.dart';
import 'package:test_widgetbook/theme/app_theme_data.dart';
import 'package:test_widgetbook/theme/light_theme.dart'  ;
import 'package:test_widgetbook/theme/dark_theme.dart'  ;

// Import the generated directories variable
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  // This widget is the root of your application.
  // Prueba de Commit
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      addons: [
        ThemeAddon<AppThemeData>(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppThemeData(
                color: Colors.blue, 
                flexTheme: flexThemeLight,
              ),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData(
                color: Colors.yellow, 
                flexTheme: flexThemeDark,
              ),
            ),
          ],
          themeBuilder: (context, theme, child) {
            // Wrap use cases with the custom theme's InheritedWidget
            return AppTheme(
              data: theme,
              child: child,
            );
          },
        ),
      ],
      directories: directories,
    );
  }
}
