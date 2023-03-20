import 'package:find_job/ui/screens/sign_in.dart';
import 'package:find_job/ui/styles/color.dart';
import 'package:find_job/ui/styles/fonts_style.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    final bodyHight = mediaQueryHight - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: mediaQueryWidht,
        height: mediaQueryHight,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/background_onboarding.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: mediaQueryWidht,
              padding: const EdgeInsets.only(
                  top: 24, right: 24, left: 24, bottom: 32),
              decoration: BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Column(
                children: [
                  Text(
                    'Welcome to the job \nsearch application',
                    style: FontsStyle.semibold_24,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: bodyHight * 0.02,
                  ),
                  Text(
                    'We are here to assist you in finding a job that\nmatches your qualifications and interests',
                    style: FontsStyle.regular_14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: bodyHight * 0.08,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      child: Text(
                        'Get Started',
                        style: FontsStyle.medium_16
                            .copyWith(color: AppColor.text50),
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: AppColor.primary500,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
