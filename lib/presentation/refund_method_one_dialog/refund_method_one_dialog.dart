import 'controller/refund_method_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class RefundMethodOneDialog extends StatelessWidget {
  RefundMethodOneDialog(this.controller);

  RefundMethodOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillBluegray901.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 32,
              top: 40,
              right: 32,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgGroup2,
              height: getVerticalSize(
                180.00,
              ),
              width: getHorizontalSize(
                185.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 34,
              right: 32,
            ),
            child: Text(
              "lbl_successfull".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Cyan601,
            ),
          ),
          Container(
            width: getHorizontalSize(
              248.00,
            ),
            margin: getMargin(
              left: 32,
              top: 24,
              right: 32,
            ),
            child: Text(
              "msg_you_have_succes".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          CustomButton(
            width: 276,
            text: "lbl_ok".tr,
            margin: getMargin(
              left: 32,
              top: 32,
              right: 32,
              bottom: 20,
            ),
            variant: ButtonVariant.FillCyan601,
          ),
        ],
      ),
    );
  }
}
