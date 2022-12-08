import '../controller/hotel_details_controller.dart';
import '../models/listellipseone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class ListellipseoneItemWidget extends StatelessWidget {
  ListellipseoneItemWidget(this.listellipseoneItemModelObj);

  ListellipseoneItemModel listellipseoneItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 10.0,
        bottom: 10.0,
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
              width: getHorizontalSize(
                380.00,
              ),
              decoration: AppDecoration.outlineBlack9000c.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgEllipse1,
                                  height: getSize(
                                    48.00,
                                  ),
                                  width: getSize(
                                    48.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 9,
                                  bottom: 4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_jenny_wilson".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold16
                                          .copyWith(
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "lbl_dec_10_2024".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanMedium12Gray400
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
                          Container(
                            margin: getMargin(
                              top: 8,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.fillCyan601.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 17,
                                    top: 11,
                                    bottom: 11,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgStar,
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
                                    left: 9,
                                    top: 9,
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: Text(
                                    "lbl_5".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistSemiBold14WhiteA700
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
                  ),
                  Container(
                    width: getHorizontalSize(
                      292.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 24,
                      bottom: 24,
                    ),
                    child: Text(
                      "msg_very_nice_and_c".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular14WhiteA700.copyWith(
                        letterSpacing: 0.20,
                      ),
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
