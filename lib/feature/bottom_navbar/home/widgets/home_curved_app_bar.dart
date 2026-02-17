import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class HomeCurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeCurvedAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Text(
        'MyLife',
        style: AppTextStyle.heading(
          size: 28,
          weight: FontWeight.w800,
          color: AppColor.surface,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
          color: AppColor.surface,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
          color: AppColor.surface,
        ),
      ],
      flexibleSpace: ClipPath(
        clipper: _HomeAppBarCurveClipper(),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[AppColor.primary, AppColor.secondary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0x44FFFFFF), Colors.transparent],
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                ),
              ),
            ),
            const Positioned(
              top: -24,
              right: -16,
              child: _GlowCircle(size: 90),
            ),
            const Positioned(top: 10, left: -20, child: _GlowCircle(size: 60)),
          ],
        ),
      ),
    );
  }
}

class _HomeAppBarCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double leftBottom = size.height - 8;
    final double rightBottom = size.height - 26;
    path.lineTo(0, leftBottom);
    path.lineTo(size.width, rightBottom);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _GlowCircle extends StatelessWidget {
  const _GlowCircle({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.11),
      ),
    );
  }
}
