import 'package:flutter/material.dart';

class Commontext extends StatelessWidget {
  const Commontext({
    super.key,
    required this.text,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.bold = false,
    this.onTap,
    this.decoration,
    this.icon,
    this.size,

  });
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final bool bold;
  final GestureTapCallback? onTap;
final TextDecoration? decoration;
final IconData? icon;
final double? size;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: size,),
          Text(
            
            text,
            style: TextStyle(
              decoration: TextDecoration.underline,
              
                color: textColor,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}