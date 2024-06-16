import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefinitionListWidget extends StatelessWidget {
  const DefinitionListWidget({
    super.key,
    required this.title,
    required this.value,
    this.isRight,
    this.titleStyle,
    this.valueStyle,
  });

  final String title;
  final String value;
  final bool? isRight;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: (isRight ?? false) ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: titleStyle ??
              const TextStyle(
                fontSize: 14,
              ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: valueStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
