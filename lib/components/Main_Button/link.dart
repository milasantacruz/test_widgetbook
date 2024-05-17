import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class LinkButton extends StatelessWidget {
  const LinkButton({
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
    Color textColor = enabled ? const Color(0xFFF24F13) : Colors.grey;
    Color textDecorationColor =
        enabled ? const Color(0xFFF24F13) : Colors.transparent;
    TextStyle textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: textColor,
      decoration: enabled ? TextDecoration.underline : TextDecoration.none,
      fontFamily: 'SF Pro',
      height: 1.5,
      letterSpacing: 0,
      wordSpacing: 0,
    );

    return InkWell(
      onTap: enabled ? onPressed : null,
      child: Text(
        label.toUpperCase(),
        style: textStyle.copyWith(
          decorationColor: textDecorationColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Link',
  type: LinkButton,
)
Widget linkButton(BuildContext context) {
  return Center(
    child: LinkButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Link Button Pressed');
      },
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled Link',
  type: LinkButton,
)
Widget disabledLink(BuildContext context) {
  return Center(
    child: LinkButton(
      label: 'PRIMARY',
      onPressed: () {},
      enabled: false,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled Link',
  type: LinkButton,
)
Widget enabledLink(BuildContext context) {
  return Center(
    child: LinkButton(
      label: 'PRIMARY',
      onPressed: () {
        print('PRIMARY Pressed');
      },
      enabled: true,
    ),
  );
}
