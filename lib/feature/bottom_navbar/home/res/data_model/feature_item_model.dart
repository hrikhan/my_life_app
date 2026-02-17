import 'package:flutter/material.dart';

class FeatureItemModel {
  const FeatureItemModel({
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;
}
