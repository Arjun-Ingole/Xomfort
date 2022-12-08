import '../controller/hotel_details_controller.dart';
import '../models/listcut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class ListcutItemWidget extends StatelessWidget {
  ListcutItemWidget(this.listcutItemModelObj, {this.onTapImgTwitter});

  ListcutItemModel listcutItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  VoidCallback? onTapImgTwitter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 27,
                    top: 4,
                    right: 27,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCut,
                    height: getVerticalSize(
                      24.00,
                    ),
                    width: getHorizontalSize(
                      26.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      "lbl_swimming_pool".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 42,
              top: 6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgSignal,
                  height: getVerticalSize(
                    18.00,
                  ),
                  width: getHorizontalSize(
                    26.00,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 2,
                      top: 14,
                      right: 3,
                    ),
                    child: Text(
                      "lbl_wifi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 53,
              top: 4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 17,
                    right: 17,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCut23X25,
                    height: getVerticalSize(
                      23.00,
                    ),
                    width: getHorizontalSize(
                      25.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      "lbl_restaurant".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 46,
              top: 4,
              right: 25,
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
                      left: 4,
                      right: 3,
                    ),
                    child: InkWell(
                      onTap: () {
                        onTapImgTwitter!();
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.imgTwitter,
                        height: getVerticalSize(
                          24.00,
                        ),
                        width: getHorizontalSize(
                          32.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                    "lbl_parking".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium12.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
