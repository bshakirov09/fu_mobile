import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  List<Color> splashData = [
    AppColors.white,
    AppColors.blue,
    AppColors.secondaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => page(
              splashData[index],
            ),
          ),
          SizedBox.expand(
            child: Column(
              children: [
                SizedBox(height: 58.h),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SignInPage(),
                        ),
                      ),
                      child: Text(
                        "skip".tr(),
                        style:
                            AdaptiveTheme.of(context).theme.textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: RichText(
                    text: TextSpan(
                      text: 'Fitness Unsencored',
                      style: AdaptiveTheme.of(context)
                          .theme
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 32.sp),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  width: 1,
                  height: 93.h,
                  color: AppColors.primaryColor,
                ),
                SizedBox(height: 14.h),
                DottedBorder(
                  strokeWidth: 2.w,
                  borderType: BorderType.Circle,
                  dashPattern: const [5, 5],
                  radius: Radius.circular(18.r),
                  color: AppColors.primaryColor,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 18.r,
                    child: Container(
                      height: 18.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.r),
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 95.w),
                  child: Text("Practice everyday and share  your results",
                      textAlign: TextAlign.center,
                      style: AdaptiveTheme.of(context)
                          .theme
                          .textTheme
                          .headline4!
                          .copyWith(letterSpacing: 0.1)),
                ),
                SizedBox(height: 86.h),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 24.w, left: 30.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 110.w,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease);
                              });
                            },
                            child: Text(
                              "Next",
                              style: AdaptiveTheme.of(context)
                                  .theme
                                  .textTheme
                                  .button,
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 50),
      margin: EdgeInsets.only(right: 6.w),
      height: 7.h,
      width: 7.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.5.r),
          color: currentPage == index ? Colors.black : Colors.grey),
    );
  }

  page(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: color,

        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   colorFilter: ColorFilter.mode(
        //       Colors.black.withOpacity(0.3), BlendMode.dstATop),
        //   image: AssetImage(
        //     backgroundImage,
        //   ),
        // ),
      ),
    );
  }
}
