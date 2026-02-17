import 'package:flutter/widgets.dart';
import 'package:my_life/core/utility/imagepath/imagepath.dart';
import 'package:my_life/feature/bottom_navbar/widgets/tab_placeholder.dart';

class CoursesTabPage extends StatelessWidget {
  const CoursesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabPlaceholder(
      title: 'Courses Page',
      assetHint: ImagePath.coursesBanner,
    );
  }
}
