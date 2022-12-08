import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    left: 124,
                    top: 332,
                    right: 124,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgGroup,
                    height: getSize(
                      74.00,
                    ),
                    width: getSize(
                      74.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 124,
                    top: 45,
                    right: 124,
                    bottom: 20,
                  ),
                  child: Text(
                    "lbl_comfort".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold48,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
