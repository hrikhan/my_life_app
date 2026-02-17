import 'package:flutter/material.dart';

class TabItemModel {
  const TabItemModel({
    required this.label,
    required this.icon,
    required this.iconAssetPath,
    required this.imageAssetPath,
  });

  final String label;
  final IconData icon;
  final String iconAssetPath;
  final String imageAssetPath;
}
