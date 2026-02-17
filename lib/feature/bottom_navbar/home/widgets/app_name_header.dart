import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class AppNameHeader extends StatelessWidget {
  const AppNameHeader({super.key, required this.appName});

  final String appName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          colors: <Color>[AppColor.primary, AppColor.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            appName,
            style: AppTextStyle.heading(
              size: 38,
              weight: FontWeight.w800,
              color: AppColor.textLight,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Islamic Learning for Everyday Life',
            style: AppTextStyle.body(color: AppColor.textLight, size: 14),
          ),
        ],
      ),
    );
  }
}
