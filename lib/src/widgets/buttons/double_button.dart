import 'package:flutter/material.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.icon,
    this.color,
    this.textColor,
    this.iconColor,
    this.isDisabled = false,
    this.isRounded = false,
    this.hasBorder = false,
    this.isNotExpanded = false,
    this.borderColor,
    this.width = double.infinity,
    this.padding = _defaultPadding,
  })  : assert((borderColor != null && hasBorder) || borderColor == null),
        assert(text != null || icon != null),
        super(key: key);
  final VoidCallback onPressed;
  final String? text;
  final IconData? icon;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final Color? borderColor;
  final bool hasBorder;
  final bool isDisabled;
  final bool isNotExpanded;
  final bool isRounded;
  final EdgeInsets padding;
  final double width;
  static const double _height = 50;
  static const EdgeInsets _defaultPadding = EdgeInsets.symmetric(vertical: 6, horizontal: 16);

  factory DoubleButton.iconButton({
    Key? key,
    required VoidCallback onPressed,
    required IconData icon,
    Color? color,
    Color? iconColor,
    bool isDisabled = false,
    bool hasBorder = false,
    bool isNotExpanded = true,
    Color? borderColor,
    EdgeInsets padding = _defaultPadding,
  }) {
    return DoubleButton(
      onPressed: onPressed,
      icon: icon,
      color: color,
      iconColor: iconColor,
      hasBorder: hasBorder,
      borderColor: borderColor,
      isDisabled: isDisabled,
      isNotExpanded: isNotExpanded,
      padding: padding,
      isRounded: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: ElevatedButton(
        onPressed: () {
          if (!isDisabled) {
            onPressed();
          }
        },
        style: ElevatedButton.styleFrom(
          minimumSize: isNotExpanded ? null : Size(width, _height),
          primary: isDisabled ? Theme.of(context).disabledColor : color,
          shape: isRounded ? const StadiumBorder() : null,
          side: hasBorder
              ? BorderSide(
                  color: borderColor ?? Theme.of(context).primaryColor,
                  width: 2)
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (icon != null)
                Icon(
                  icon,
                  color:
                      iconColor ?? textColor ?? Theme.of(context).primaryColor,
                ),
              if (icon != null && text != null) const SizedBox(width: 8),
              if (text != null)
                Text(
                  text!,
                  style: Theme.of(context).textTheme.button?.copyWith(
                        color: textColor ?? Theme.of(context).primaryColor,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
