import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/presentation/components/app_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarComponent(
          text: "terms_and_conditions".tr(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Text(
              "welcome_to".tr() + " " + "fitness_uncensored".tr(),
              style: AdaptiveTheme.of(context).theme.textTheme.headline4,
            ),
            SizedBox(height: 16.h),
            Text(
              """
These terms and conditions outline the rules and regulations for the use of Fitness Unsencored's Website, located at FitnessUnsencored.com.

By accessing this website we assume you accept these terms and conditions. Do not continue to use Fitness Unsencored if you do not agree to take all of the terms and conditions stated on this page.

The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: "Client", "You" and "Your" refers to you, the person log on this website and compliant to the Company’s terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same. Cookies We employ the use of cookies. By accessing Fitness Unsencored, you agreed to use cookies in agreement with the Fitness Unsencored's Privacy Policy. Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies. License
Unless otherwise stated, Fitness Unsencored and/or its licensors own the intellectual property rights for all material on Fitness Unsencored. All intellectual property rights are reserved. You may access this from Fitness Unsencored for your own personal use subjected to restrictions set in these terms and conditions.""",
              style: AdaptiveTheme.of(context).theme.textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
