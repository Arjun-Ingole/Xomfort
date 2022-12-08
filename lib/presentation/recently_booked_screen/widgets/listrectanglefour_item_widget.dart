import '../controller/recently_booked_controller.dart';
import '../models/listrectanglefour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglefourItemWidget extends StatelessWidget {
  ListrectanglefourItemWidget(this.listrectanglefourItemModelObj);

  ListrectanglefourItemModel listrectanglefourItemModelObj;

  var controller = Get.find<RecentlyBookedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 12.0,
        bottom: 12.0,
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
                        imagePath: ImageConstant.imgRectangle4,
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
                      top: 29,
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
                            "lbl_president_hotel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_paris_france".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistRegular14Gray300.copyWith(
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                  style:
                                      AppStyle.txtUrbanistSemiBold14.copyWith(
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
                                  style: AppStyle.txtUrbanistRegular12.copyWith(
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
                            "lbl_35".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold24Cyan601,
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
                            style: AppStyle.txtUrbanistRegular10.copyWith(
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
    );
  }
}
