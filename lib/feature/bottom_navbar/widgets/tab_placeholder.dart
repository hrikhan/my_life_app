import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class TabPlaceholder extends StatelessWidget {
  const TabPlaceholder({
    super.key,
    required this.title,
    required this.assetHint,
  });

  final String title;
  final String assetHint;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: AppTextStyle.heading(
                size: 28,
                weight: FontWeight.w700,
                color: AppColor.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Asset: $assetHint',
              textAlign: TextAlign.center,
              style: AppTextStyle.body(color: AppColor.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
