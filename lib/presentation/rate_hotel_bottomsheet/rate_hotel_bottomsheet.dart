import 'controller/rate_hotel_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class RateHotelBottomsheet extends StatelessWidget {
  RateHotelBottomsheet(this.controller);

  RateHotelController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: AppDecoration.outlineGray8002.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                3.00,
              ),
              width: getHorizontalSize(
                38.00,
              ),
              margin: getMargin(
                left: 24,
                top: 8,
                right: 24,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    1.50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 26,
                right: 24,
              ),
              child: Text(
                "lbl_rate_the_hotel".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold24,
              ),
            ),
            Container(
              width: double.infinity,
              margin: getMargin(
                left: 24,
                top: 32,
                right: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    16.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.outlineBlack9000c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 20,
                              bottom: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle42,
                                height: getSize(
                                  100.00,
                                ),
                                width: getSize(
                                  100.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 32,
                              bottom: 28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_bulgari_resort".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 13,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_paris_france".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRegular14Gray300
                                        .copyWith(
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 12,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 5,
                                          bottom: 5,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar9X10,
                                          height: getVerticalSize(
                                            9.00,
                                          ),
                                          width: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 5,
                                          top: 3,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_4_8".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtUrbanistSemiBold14
                                              .copyWith(
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_4_378_reviews".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtUrbanistRegular12
                                              .copyWith(
                                            letterSpacing: 0.20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 26,
                              bottom: 28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "lbl_27".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold24Cyan601,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 6,
                                  ),
                                  child: Text(
                                    "lbl_night".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRegular10.copyWith(
                                      letterSpacing: 0.20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 34,
                                    top: 20,
                                    right: 4,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgBookmark,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 28,
                right: 24,
              ),
              child: Text(
                "msg_please_give_you".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold20,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 27,
                right: 24,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgGroup118,
                height: getVerticalSize(
                  25.00,
                ),
                width: getHorizontalSize(
                  265.00,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: getMargin(
                left: 24,
                top: 27,
                right: 24,
              ),
              decoration: AppDecoration.fillBluegray901.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      324.00,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 24,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      "msg_the_rooms_are_v".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    61.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    width: 380,
                    text: "lbl_rate_now".tr,
                    variant: ButtonVariant.FillCyan601,
                  ),
                  CustomButton(
                    width: 380,
                    text: "lbl_later".tr,
                    margin: getMargin(
                      top: 12,
                    ),
                    variant: ButtonVariant.FillGray800,
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
