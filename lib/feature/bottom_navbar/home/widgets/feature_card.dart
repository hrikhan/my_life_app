import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';
import 'package:my_life/feature/bottom_navbar/home/res/data_model/feature_item_model.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.item, this.onTap});

  final FeatureItemModel item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          width: 110,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColor.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColor.border),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 22,
                backgroundColor: item.iconColor.withValues(alpha: 0.15),
                child: Icon(item.icon, color: item.iconColor),
              ),
              const SizedBox(height: 10),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: AppTextStyle.body(
                  size: 13,
                  weight: FontWeight.w600,
                  color: AppColor.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
