import '../controller/refund_method_controller.dart';
import '../models/refund_method_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class RefundMethodItemWidget extends StatelessWidget {
  RefundMethodItemWidget(this.refundMethodItemModelObj);

  RefundMethodItemModel refundMethodItemModelObj;

  var controller = Get.find<RefundMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 14.0,
        bottom: 14.0,
      ),
      decoration: AppDecoration.outlineBlack90014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 29,
              top: 27,
              bottom: 27,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImageView(
                  svgPath: ImageConstant.imgGroup26X22,
                  height: getVerticalSize(
                    26.00,
                  ),
                  width: getHorizontalSize(
                    22.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 17,
                    top: 5,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_paypal".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getSize(
              20.00,
            ),
            width: getSize(
              20.00,
            ),
            margin: getMargin(
              left: 204,
              top: 30,
              right: 32,
              bottom: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              border: Border.all(
                color: ColorConstant.cyan601,
                width: getHorizontalSize(
                  3.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
