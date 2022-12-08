import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 332,
                    ),
                    decoration: AppDecoration.gradientGray80000Bluegray900,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 32,
                            top: 258,
                            right: 32,
                          ),
                          child: Text(
                            "lbl_welcome_to".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold48,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 32,
                            top: 34,
                            right: 32,
                          ),
                          child: Text(
                            "lbl_comfort".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBlack64,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            326.00,
                          ),
                          margin: getMargin(
                            left: 32,
                            top: 52,
                            right: 32,
                            bottom: 20,
                          ),
                          child: Text(
                            "msg_the_best_hotel".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
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
          ),
        ),
      ),
    );
  }
}
