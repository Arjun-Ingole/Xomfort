import '../controller/my_bookmarks_controller.dart';
import '../models/my_bookmarks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class MyBookmarksItemWidget extends StatelessWidget {
  MyBookmarksItemWidget(this.myBookmarksItemModelObj);

  MyBookmarksItemModel myBookmarksItemModelObj;

  var controller = Get.find<MyBookmarksController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 19,
                  top: 20,
                  right: 19,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: getVerticalSize(
                      120.00,
                    ),
                    width: getHorizontalSize(
                      140.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
                top: 19,
                right: 20,
              ),
              child: Text(
                "msg_president_mila".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold18,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 20,
                top: 12,
                right: 20,
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
                      style: AppStyle.txtUrbanistSemiBold14.copyWith(
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
                      "lbl_paris_france".tr,
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 19,
                  top: 8,
                  right: 19,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_35".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20Cyan601,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                            top: 11,
                            bottom: 3,
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
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
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
            ),
          ],
        ),
      ),
    );
  }
}
