import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:test_widgetbook/theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title, style:AppTheme.of(context).flexTheme.textTheme.labelLarge),
    );
  }
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: CustomButton,
)
CustomButton enabledButton(BuildContext context) {
  return CustomButton(
    title: 'Enabled',
    onPressed: () {},
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: CustomButton,
)
CustomButton disabledButton(BuildContext context) {
  return const CustomButton(
    title: 'Disabled',
  );
}