import 'controller/booking_completed_controller.dart';
import 'models/booking_completed_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';
import 'package:xomfort/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatelessWidget {
  BookingCompletedController controller =
      Get.put(BookingCompletedController(BookingCompletedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
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
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle4,
                                height: getSize(
                                  100.00,
                                ),
                                width: getSize(
                                  100.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 10,
                                bottom: 6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_bulgari_resort".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 13,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_paris_france".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    width: 72,
                                    text: "lbl_completed".tr,
                                    margin: getMargin(
                                      top: 12,
                                      right: 10,
                                    ),
                                    variant: ButtonVariant.FillGreenA7001e,
                                    shape: ButtonShape.RoundedBorder6,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle: ButtonFontStyle
                                        .UrbanistSemiBold10Cyan601,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          340.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray701,
                        ),
                      ),
                      CustomTextFormField(
                        width: 340,
                        focusNode: FocusNode(),
                        controller: controller.statusSuccessController,
                        hintText: "msg_yeay_you_have".tr,
                        margin: getMargin(
                          left: 20,
                          top: 19,
                          right: 20,
                          bottom: 20,
                        ),
                        variant: TextFormFieldVariant.FillGreen40033,
                        padding: TextFormFieldPadding.PaddingT9,
                        fontStyle:
                            TextFormFieldFontStyle.UrbanistRegular10Green500,
                        prefix: Container(
                          margin: getMargin(
                            left: 13,
                            top: 9,
                            right: 7,
                            bottom: 9,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckmark1,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          minWidth: getSize(
                            15.00,
                          ),
                          minHeight: getSize(
                            15.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 20,
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
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: getSize(
                                  100.00,
                                ),
                                width: getSize(
                                  100.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 7,
                                bottom: 6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_hotel_martinez".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 15,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "msg_amsterdam_neth".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    width: 72,
                                    text: "lbl_completed".tr,
                                    margin: getMargin(
                                      top: 12,
                                      right: 10,
                                    ),
                                    variant: ButtonVariant.FillGreenA7001e,
                                    shape: ButtonShape.RoundedBorder6,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle: ButtonFontStyle
                                        .UrbanistSemiBold10Cyan601,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          340.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray701,
                        ),
                      ),
                      CustomTextFormField(
                        width: 340,
                        focusNode: FocusNode(),
                        controller: controller.statusSuccessOneController,
                        hintText: "msg_yeay_you_have".tr,
                        margin: getMargin(
                          left: 20,
                          top: 19,
                          right: 20,
                          bottom: 20,
                        ),
                        variant: TextFormFieldVariant.FillGreen40033,
                        padding: TextFormFieldPadding.PaddingT9,
                        fontStyle:
                            TextFormFieldFontStyle.UrbanistRegular10Green500,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: getMargin(
                            left: 13,
                            top: 9,
                            right: 7,
                            bottom: 9,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckmark1,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          minWidth: getSize(
                            15.00,
                          ),
                          minHeight: getSize(
                            15.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 20,
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
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle2,
                                height: getSize(
                                  100.00,
                                ),
                                width: getSize(
                                  100.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 7,
                                bottom: 6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_faena_miami_bea".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 15,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_rome_italia".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: 0.20,
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    width: 72,
                                    text: "lbl_completed".tr,
                                    margin: getMargin(
                                      top: 12,
                                      right: 10,
                                    ),
                                    variant: ButtonVariant.FillGreenA7001e,
                                    shape: ButtonShape.RoundedBorder6,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle: ButtonFontStyle
                                        .UrbanistSemiBold10Cyan601,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          340.00,
                        ),
                        margin: getMargin(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.bluegray701,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                          top: 19,
                          right: 20,
                          bottom: 20,
                        ),
                        decoration: AppDecoration.fillGreen40033.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 13,
                                top: 9,
                                bottom: 9,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCheckmark1,
                                height: getSize(
                                  15.00,
                                ),
                                width: getSize(
                                  15.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 7,
                                top: 11,
                                bottom: 10,
                              ),
                              child: Text(
                                "msg_yeay_you_have".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular10Green500
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
