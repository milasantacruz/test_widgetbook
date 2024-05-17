import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class MediumButton extends StatelessWidget {
  const MediumButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        enabled ? const Color(0xFFF24F13) : const Color(0xFF595959);
    Color textColor = enabled ? Colors.white : Colors.black.withOpacity(0.5);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 16.0,
        ),
        textStyle: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      onPressed: enabled ? onPressed : null,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: MediumButton,
)
Widget disabledMedium(BuildContext context) {
  return Center(
    child: MediumButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Medium Button Pressed');
      },
      enabled: false,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: MediumButton,
)
Widget enabledMedium(BuildContext context) {
  return Center(
    child: MediumButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Medium Button Pressed');
      },
      enabled: true,
    ),
  );
}
