import '../controller/forgot_password_controller.dart';
import '../models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  ListvolumeItemWidget(this.listvolumeItemModelObj);

  ListvolumeItemModel listvolumeItemModelObj;

  var controller = Get.find<ForgotPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 12.000015,
        bottom: 12.000015,
      ),
      decoration: AppDecoration.outlineCyan600.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 80,
            width: 80,
            margin: getMargin(
              left: 24,
              top: 24,
              bottom: 24,
            ),
            variant: IconButtonVariant.FillGray800,
            shape: IconButtonShape.CircleBorder40,
            padding: IconButtonPadding.PaddingAll26,
            child: CommonImageView(
              svgPath: ImageConstant.imgVolume,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 42,
              right: 163,
              bottom: 41,
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
                    "lbl_via_sms".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium14.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 14,
                  ),
                  child: Text(
                    "lbl_1_111_99".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold16.copyWith(
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
