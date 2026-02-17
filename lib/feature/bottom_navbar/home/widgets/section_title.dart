import 'package:flutter/material.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.heading(size: 20, weight: FontWeight.w700),
    );
  }
}
