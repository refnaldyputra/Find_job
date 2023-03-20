import 'package:find_job/ui/screens/detail_job.dart';
import 'package:find_job/ui/styles/color.dart';
import 'package:find_job/ui/styles/fonts_style.dart';

import 'package:flutter/material.dart';

class CardNewsJob extends StatelessWidget {
  final String imgCompany;
  final String title;
  final String location;
  final String save;
  final String statusJob;
  final String locationJob;
  final String pay;

  CardNewsJob(
      {required this.imgCompany,
      required this.title,
      required this.location,
      required this.save,
      required this.statusJob,
      required this.locationJob,
      required this.pay});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHight = MediaQuery.of(context).size.height;
    final mediaQueryWidht = MediaQuery.of(context).size.width;
    final bodyHight = mediaQueryHight - MediaQuery.of(context).padding.top;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailJob(
                    imgUrl: imgCompany,
                    titleJob: title,
                    addres: location,
                  )),
        );
      },
      child: Expanded(
        child: Container(
          height: 128,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColor.netral200,
              ),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imgCompany,
                        width: mediaQueryWidht * 0.13,
                      ),
                      SizedBox(
                        width: mediaQueryWidht * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: FontsStyle.semibold_14
                                .copyWith(color: AppColor.text500),
                          ),
                          SizedBox(height: bodyHight * 0.005),
                          Text(
                            location,
                            style: FontsStyle.regular_14
                                .copyWith(color: AppColor.text500),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mediaQueryWidht * 0.15,
                  ),
                  Image.asset(
                    save,
                    width: mediaQueryWidht * 0.06,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: AppColor.netral200),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        statusJob,
                        style: FontsStyle.regular_12
                            .copyWith(color: AppColor.text500),
                      ),
                    ),
                    SizedBox(
                      width: mediaQueryWidht * 0.02,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: AppColor.netral200),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        locationJob,
                        style: FontsStyle.regular_12
                            .copyWith(color: AppColor.text500),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: mediaQueryWidht * 0.08,
                  ),
                  Text(
                    pay,
                    style:
                        FontsStyle.medium_14.copyWith(color: AppColor.text500),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
