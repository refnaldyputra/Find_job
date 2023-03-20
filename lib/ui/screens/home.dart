import 'package:find_job/ui/styles/color.dart';
import 'package:find_job/ui/styles/fonts_style.dart';
import 'package:find_job/ui/widget/card_newsjob.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    final bodyHight = mediaQueryHight - MediaQuery.of(context).padding.top;
    return Scaffold(
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColor.background,
              showSelectedLabels: true,
              unselectedItemColor: AppColor.netral400,
              selectedItemColor: AppColor.primary500,
              elevation: 0,
              currentIndex: 0,
              iconSize: 24,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/img/home.png')),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/img/save-2.png')),
                    label: 'Save'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/img/message.png')),
                    label: 'Message'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/img/profile.png')),
                    label: 'Profile')
              ]),
        ),
        backgroundColor: AppColor.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding:
                  EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/img/FIND JOB.png',
                        width: mediaQueryWidht * 0.2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/img/notif.png',
                          width: mediaQueryWidht * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryWidht * 0.1,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              prefixIcon: Padding(
                                padding:
                                    EdgeInsetsDirectional.only(start: 12.0),
                                child: Icon(
                                  Icons.search_outlined,
                                  color: AppColor.text400,
                                ),
                              ),
                              hintText: 'Search your job',
                              hintStyle: FontsStyle.regular_14
                                  .copyWith(color: AppColor.text400),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 1, color: AppColor.primary500)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: AppColor.netral300),
                                  borderRadius: BorderRadius.circular(8))),
                        ),
                      ),
                      SizedBox(
                        width: mediaQueryWidht * 0.05,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/img/fillter.png',
                          width: mediaQueryWidht * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryWidht * 0.08,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Most Popular Jobs',
                          style: FontsStyle.bold_18
                              .copyWith(color: AppColor.text500)),
                      InkWell(
                        onTap: () {},
                        child: Text('Show All',
                            style: FontsStyle.medium_14
                                .copyWith(color: AppColor.primary500)),
                      )
                    ],
                  ),
                  SizedBox(height: bodyHight * 0.03),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardNewsJob(
                            imgCompany: 'assets/img/wix.png',
                            title: 'Senior UI Designer',
                            location: 'Wix - United States',
                            save: 'assets/img/save.png',
                            statusJob: 'Full Time',
                            locationJob: 'On Site',
                            pay: '\$900/month'),
                        SizedBox(
                          width: mediaQueryWidht * 0.04,
                        ),
                        CardNewsJob(
                            imgCompany: 'assets/img/ADA.png',
                            title: 'Product Designer',
                            location: 'ADA - United States',
                            save: 'assets/img/save.png',
                            statusJob: 'Full Time',
                            locationJob: 'On Site',
                            pay: '\$900/month')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryWidht * 0.08,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Jobs',
                          style: FontsStyle.bold_18
                              .copyWith(color: AppColor.text500)),
                      InkWell(
                        onTap: () {},
                        child: Text('Show All',
                            style: FontsStyle.medium_14
                                .copyWith(color: AppColor.primary500)),
                      )
                    ],
                  ),
                  SizedBox(height: bodyHight * 0.03),
                  Column(
                    children: [
                      CardNewsJob(
                          imgCompany: 'assets/img/image_company.png',
                          title: 'Product Manager',
                          location: 'Udemy - United States',
                          save: 'assets/img/save.png',
                          statusJob: 'Full Time',
                          locationJob: 'Remote',
                          pay: '\$1000/month'),
                      SizedBox(
                        height: bodyHight * 0.02,
                      ),
                      CardNewsJob(
                          imgCompany: 'assets/img/Marko.png',
                          title: 'Data Scientist',
                          location: 'Marko - United States',
                          save: 'assets/img/save.png',
                          statusJob: 'Full Time',
                          locationJob: 'On Site',
                          pay: '\$850/month'),
                      SizedBox(
                        height: bodyHight * 0.02,
                      ),
                      CardNewsJob(
                          imgCompany: 'assets/img/protoio.png',
                          title: 'UX  Researcher',
                          location: 'Protoio - United States',
                          save: 'assets/img/save.png',
                          statusJob: 'Full Time',
                          locationJob: 'On Site',
                          pay: '\$900/month')
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
