import 'package:flutter/material.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/core/utility/text_style/app_text_style.dart';

class SavaraDetailsScreen extends StatefulWidget {
  const SavaraDetailsScreen({super.key, required this.initialPage});

  final int initialPage;

  @override
  State<SavaraDetailsScreen> createState() => _SavaraDetailsScreenState();
}

class _SavaraDetailsScreenState extends State<SavaraDetailsScreen> {
  late final PageController _pageController;
  late int _currentPage;

  static const List<String> _arabicLetters = <String>[
    'ا',
    'ب',
    'ت',
    'ث',
    'ج',
    'ح',
    'خ',
    'د',
    'ذ',
    'ر',
    'ز',
    'س',
    'ش',
    'ص',
    'ض',
    'ط',
    'ظ',
    'ع',
    'غ',
    'ف',
    'ق',
    'ك',
    'ل',
    'م',
    'ن',
    'ه',
    'و',
    'ي',
  ];

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        title: Text(
          'Savara Details',
          style: AppTextStyle.heading(size: 20, weight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColor.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Page ${_currentPage + 1} of 2',
                style: AppTextStyle.body(
                  size: 13,
                  weight: FontWeight.w600,
                  color: AppColor.primary,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: <Widget>[
                  _BookStylePage(
                    pageTitle: 'Arabic Letters (Alif-Ba-Ta-Tha)',
                    pageNumber: 1,
                    textDirection: TextDirection.rtl,
                    child: _ArabicLettersContainer(letters: _arabicLetters),
                  ),
                  _BookStylePage(
                    pageTitle: 'Tajid',
                    pageNumber: 2,
                    textDirection: TextDirection.ltr,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _RuleRow(
                          title: 'Makhraj',
                          description: 'Correct articulation of letters.',
                        ),
                        const SizedBox(height: 12),
                        _RuleRow(
                          title: 'Madd',
                          description: 'Proper elongation of sound.',
                        ),
                        const SizedBox(height: 12),
                        _RuleRow(
                          title: 'Ghunnah',
                          description: 'Nasal tone in specific letters.',
                        ),
                        const SizedBox(height: 12),
                        _RuleRow(
                          title: 'Qalqalah',
                          description: 'Echo effect in special letters.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookStylePage extends StatelessWidget {
  const _BookStylePage({
    required this.pageTitle,
    required this.pageNumber,
    required this.textDirection,
    required this.child,
  });

  final String pageTitle;
  final int pageNumber;
  final TextDirection textDirection;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFE9DCC3)),
          gradient: const LinearGradient(
            colors: <Color>[Color(0xFFFFF7E7), Color(0xFFF9EFD9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 1.2,
                color: const Color(0xFFD9C9A8).withValues(alpha: 0.5),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Page $pageNumber',
                  style: AppTextStyle.body(
                    size: 12,
                    weight: FontWeight.w600,
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  pageTitle,
                  style: AppTextStyle.heading(
                    size: 20,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(child: child),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RuleRow extends StatelessWidget {
  const _RuleRow({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.only(top: 6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primary,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: '$title: ',
                  style: AppTextStyle.body(
                    size: 18,
                    weight: FontWeight.w700,
                    color: AppColor.textPrimary,
                  ),
                ),
                TextSpan(
                  text: description,
                  style: AppTextStyle.body(
                    size: 17,
                    weight: FontWeight.w500,
                    color: AppColor.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ArabicLettersContainer extends StatelessWidget {
  const _ArabicLettersContainer({required this.letters});

  final List<String> letters;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.surface.withValues(alpha: 0.75),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFDCCCAA)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Read and Listen',
                style: AppTextStyle.body(
                  size: 14,
                  weight: FontWeight.w700,
                  color: AppColor.textPrimary,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mic_rounded),
                  color: AppColor.surface,
                  tooltip: 'Listening',
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.start,
                textDirection: TextDirection.rtl,
                children: letters
                    .map(
                      (letter) => Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFAEF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFDCCCAA)),
                        ),
                        child: Text(
                          letter,
                          style: AppTextStyle.heading(
                            size: 28,
                            weight: FontWeight.w700,
                            color: AppColor.textPrimary,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
