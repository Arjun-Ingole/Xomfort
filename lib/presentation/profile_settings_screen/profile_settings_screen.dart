import 'controller/profile_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/app_bar/appbar_image.dart';
import 'package:xomfort/widgets/app_bar/appbar_title.dart';
import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';
import 'package:xomfort/widgets/custom_switch.dart';

class ProfileSettingsScreen extends GetWidget<ProfileSettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: getVerticalSize(
                      56.00,
                    ),
                    leadingWidth: 30,
                    leading: AppbarImage(
                      height: getSize(
                        30.00,
                      ),
                      width: getSize(
                        30.00,
                      ),
                      svgPath: ImageConstant.imgGroup,
                      margin: getMargin(
                        bottom: 1,
                      ),
                    ),
                    title: AppbarTitle(
                      text: "lbl_profile".tr,
                      margin: getMargin(
                        left: 17,
                      ),
                    ),
                    actions: [
                      AppbarImage(
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                        svgPath: ImageConstant.imgClock,
                        margin: getMargin(
                          top: 5,
                          bottom: 5,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getSize(
                        120.00,
                      ),
                      width: getSize(
                        120.00,
                      ),
                      margin: getMargin(
                        left: 84,
                        top: 39,
                        right: 84,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  60.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse120X120,
                                height: getSize(
                                  120.00,
                                ),
                                width: getSize(
                                  120.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 10,
                                right: 2,
                                bottom: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgEdit,
                                height: getSize(
                                  25.00,
                                ),
                                width: getSize(
                                  25.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 84,
                        top: 14,
                        right: 84,
                      ),
                      child: Text(
                        "lbl_daniel_austin".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold24,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 84,
                        top: 15,
                        right: 84,
                      ),
                      child: Text(
                        "msg_daniel_austin_y".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      top: 62,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgUser22X15,
                          height: getVerticalSize(
                            22.00,
                          ),
                          width: getHorizontalSize(
                            15.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 26,
                            top: 1,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_edit_profile".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 37,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCar,
                            height: getVerticalSize(
                              19.00,
                            ),
                            width: getHorizontalSize(
                              21.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 23,
                            top: 3,
                          ),
                          child: Text(
                            "lbl_payment".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      top: 34,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgAlarm,
                          height: getVerticalSize(
                            22.00,
                          ),
                          width: getHorizontalSize(
                            17.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 25,
                            top: 1,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_notifications".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 36,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckmark22X18,
                            height: getVerticalSize(
                              22.00,
                            ),
                            width: getHorizontalSize(
                              18.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 4,
                          ),
                          child: Text(
                            "lbl_security".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 34,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgInfo,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 23,
                            top: 3,
                          ),
                          child: Text(
                            "lbl_help".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 3,
                            top: 4,
                            bottom: 5,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgEye,
                                  height: getVerticalSize(
                                    17.00,
                                  ),
                                  width: getHorizontalSize(
                                    21.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 23,
                                ),
                                child: Text(
                                  "lbl_dark_theme".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistSemiBold18.copyWith(
                                    letterSpacing: 0.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Obx(
                          () => CustomSwitch(
                            margin: getMargin(
                              top: 2,
                              bottom: 2,
                            ),
                            value: controller.isSelectedSwitch.value,
                            onChanged: (value) {
                              controller.isSelectedSwitch.value = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 2,
                      top: 33,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgClock21X22,
                            height: getVerticalSize(
                              21.00,
                            ),
                            width: getHorizontalSize(
                              22.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 4,
                          ),
                          child: Text(
                            "lbl_logout".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistSemiBold18RedA200.copyWith(
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
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Booking:
        return getDefaultWidget();
      case BottomBarEnum.Profile:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
