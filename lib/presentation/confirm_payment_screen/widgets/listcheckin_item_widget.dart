import '../controller/confirm_payment_controller.dart';
import '../models/listcheckin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class ListcheckinItemWidget extends StatelessWidget {
  ListcheckinItemWidget(this.listcheckinItemModelObj);

  ListcheckinItemModel listcheckinItemModelObj;

  var controller = Get.find<ConfirmPaymentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 14.0,
        bottom: 14.0,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 24,
              top: 25,
              right: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_check_in".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray200.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Text(
                  "msg_december_16_20".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18,
                ),
              ],
            ),
          ),
          Padding(
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
                Padding(
                  padding: getPadding(
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_check_out".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray200.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Text(
                  "msg_december_20_20".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
              top: 23,
              right: 24,
              bottom: 26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_guest".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold16Gray200.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Text(
                  "lbl_3".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
