import 'package:find_job/ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:find_job/ui/styles/color.dart';
import 'package:find_job/ui/styles/fonts_style.dart';

class DetailJob extends StatefulWidget {
  final String imgUrl;
  final String titleJob;
  final String addres;

  DetailJob(
      {required this.imgUrl, required this.titleJob, required this.addres});

  @override
  State<DetailJob> createState() => _DetailJobState();
}

class _DetailJobState extends State<DetailJob> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    final bodyHight = mediaQueryHight - MediaQuery.of(context).padding.top;

    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(color: AppColor.primary500),
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Text(
            'Apply this job',
            textAlign: TextAlign.center,
            style: FontsStyle.medium_14.copyWith(
              color: AppColor.text50,
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 32),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Image.asset(
                        'assets/img/arrow_left.png',
                        width: 24,
                      ),
                    ),
                    Text(
                      'Filter',
                      style: FontsStyle.semibold_20
                          .copyWith(color: AppColor.text500),
                    ),
                    Image.asset(
                      'assets/img/save.png',
                      width: 24,
                    )
                  ],
                ),
                SizedBox(
                  height: bodyHight * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.imgUrl))),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      widget.titleJob,
                      style: FontsStyle.semibold_18
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      widget.addres,
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    )
                  ],
                ),
                SizedBox(
                  height: bodyHight * 0.02,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/img/Applicants.png',
                            height: bodyHight * 0.06,
                          ),
                          SizedBox(
                            width: mediaQueryWidht * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aplicants',
                                style: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text500),
                              ),
                              Text(
                                '100',
                                style: FontsStyle.semibold_14
                                    .copyWith(color: AppColor.text500),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: mediaQueryWidht * 0.1,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/img/Applicants.png',
                            height: bodyHight * 0.06,
                          ),
                          SizedBox(
                            width: mediaQueryWidht * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aplicants',
                                style: FontsStyle.regular_14
                                    .copyWith(color: AppColor.text500),
                              ),
                              Text(
                                '100',
                                style: FontsStyle.semibold_14
                                    .copyWith(color: AppColor.text500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: bodyHight * 0.04,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: 16,
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.5, color: AppColor.primary500))),
                        child: Text(
                          'Description',
                          textAlign: TextAlign.center,
                          style: FontsStyle.regular_16.copyWith(
                            color: AppColor.text500,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: 16,
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: AppColor.netral300))),
                        child: Text(
                          'Company',
                          textAlign: TextAlign.center,
                          style: FontsStyle.regular_16.copyWith(
                            color: AppColor.text500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: bodyHight * 0.02,
                ),
                Column(
                  children: [
                    Text(
                      '1. Carry out its function as a UI Designer with the aim of conducting a thorough and comprehensive review of the current product design and user flow, research with users, creating design strategies, providing new design proposals, conduct testing and create product prototypes to produce easy designs, visually appealing and competitive both locally and globally.',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      '2. Creating user-focused designs by understanding business requirements and needs, as well as user feedback.',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      '3. Designing user flows, wireframes, prototypes, and mockups',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      '5. Displays an interface with good uniformity in terms of colors, fonts, images, animations, and others so that it becomes a final design (high fidelity) that is ready to be developed into an application',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      '6. Conduct research on user expectations from an application to maximize user experience in digital product interface designs',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                    SizedBox(
                      height: bodyHight * 0.01,
                    ),
                    Text(
                      '7. Collaborating collaboratively with the product team and the developer team to analyze and create designs that suit business needs and are in accordance with the technology used in digital products',
                      style: FontsStyle.regular_14
                          .copyWith(color: AppColor.text500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
