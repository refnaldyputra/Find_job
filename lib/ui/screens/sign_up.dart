import 'package:find_job/ui/screens/onboarding.dart';
import 'package:find_job/ui/screens/sign_in.dart';
import 'package:find_job/ui/styles/color.dart';
import 'package:find_job/ui/styles/fonts_style.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    final bodyHight = mediaQueryHight - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: LayoutBuilder(
          builder: ((BuildContext context, BoxConstraints constraints) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.only(top: 16, right: 24, left: 24, bottom: 32),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Image.asset(
                          'assets/img/arrow_left.png',
                          width: 24,
                        ),
                      ),
                      SizedBox(
                        width: mediaQueryWidht * 0.3,
                      ),
                      Text(
                        'Sign Up',
                        style: FontsStyle.semibold_20
                            .copyWith(color: AppColor.text500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: bodyHight * 0.06,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Name',
                            style: FontsStyle.semibold_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(height: bodyHight * 0.01),
                          TextFormField(
                            style: FontsStyle.regular_14
                                .copyWith(color: AppColor.text500),
                            decoration: InputDecoration(
                                hintText: 'Enter your name',
                                hintStyle: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.primary500)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.netral300),
                                    borderRadius: BorderRadius.circular(8))),
                          )
                        ],
                      ),
                      SizedBox(height: bodyHight * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: FontsStyle.semibold_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(height: bodyHight * 0.01),
                          TextFormField(
                            style: FontsStyle.regular_14
                                .copyWith(color: AppColor.text500),
                            decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                hintStyle: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.primary500)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.netral300),
                                    borderRadius: BorderRadius.circular(8))),
                          )
                        ],
                      ),
                      SizedBox(height: bodyHight * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: FontsStyle.semibold_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(height: bodyHight * 0.01),
                          TextFormField(
                            obscureText: _obscureText,
                            style: FontsStyle.regular_14
                                .copyWith(color: AppColor.text500),
                            decoration: InputDecoration(
                                hintText: 'Input your password',
                                hintStyle: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 12),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(_obscureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.primary500)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.netral300),
                                    borderRadius: BorderRadius.circular(8))),
                          )
                        ],
                      ),
                      SizedBox(height: bodyHight * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Repeat Password',
                            style: FontsStyle.semibold_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(height: bodyHight * 0.01),
                          TextFormField(
                            obscureText: _obscureText,
                            style: FontsStyle.regular_14
                                .copyWith(color: AppColor.text500),
                            decoration: InputDecoration(
                                hintText: 'Repeat your password',
                                hintStyle: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 12),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(_obscureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.primary500)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: AppColor.netral300),
                                    borderRadius: BorderRadius.circular(8))),
                          )
                        ],
                      ),
                      SizedBox(
                        height: bodyHight * 0.05,
                      ),
                      Container(
                        width: bodyHight,
                        padding: EdgeInsets.symmetric(vertical: 2),
                        decoration: BoxDecoration(color: AppColor.primary500),
                        child: TextButton(
                            onPressed: () {},
                            child: Text('Sign Up',
                                style: FontsStyle.medium_16
                                    .copyWith(color: AppColor.text50))),
                      ),
                      SizedBox(
                        height: bodyHight * 0.03,
                      ),
                      Text('or sign up with',
                          style: FontsStyle.medium_16
                              .copyWith(color: AppColor.text500)),
                      SizedBox(
                        height: bodyHight * 0.03,
                      ),
                      Container(
                        width: bodyHight,
                        padding: EdgeInsets.symmetric(vertical: 2),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.netral300)),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/Google.png',
                                  width: 24,
                                ),
                                SizedBox(width: mediaQueryWidht * 0.04),
                                Text(
                                  'Sign up with Google',
                                  style: FontsStyle.medium_16
                                      .copyWith(color: AppColor.text500),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: bodyHight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?',
                            style: FontsStyle.medium_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(
                            width: mediaQueryWidht * 0.01,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: FontsStyle.medium_14
                                  .copyWith(color: AppColor.primary500),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
