import '../controller/booking_ongoing_controller.dart';
import '../models/listrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListrectangleItemWidget extends StatelessWidget {
  ListrectangleItemWidget(this.listrectangleItemModelObj);

  ListrectangleItemModel listrectangleItemModelObj;

  var controller = Get.find<BookingOngoingController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(
          top: 10.0,
          bottom: 10.0,
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
                          "msg_royale_presiden".tr,
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
                            style:
                                AppStyle.txtUrbanistRegular14Gray300.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        CustomButton(
                          width: 60,
                          text: "lbl_paid".tr,
                          margin: getMargin(
                            top: 12,
                            right: 10,
                          ),
                          variant: ButtonVariant.FillGreenA7001e,
                          shape: ButtonShape.RoundedBorder6,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.UrbanistSemiBold10Cyan601,
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
            Padding(
              padding: getPadding(
                left: 20,
                top: 19,
                right: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(
                    width: 164,
                    text: "lbl_cancel_booking".tr,
                    variant: ButtonVariant.OutlineCyan601,
                    shape: ButtonShape.CircleBorder19,
                    padding: ButtonPadding.PaddingAll10,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold16,
                  ),
                  CustomButton(
                    width: 164,
                    text: "lbl_view_ticket".tr,
                    margin: getMargin(
                      left: 12,
                    ),
                    variant: ButtonVariant.FillCyan601,
                    shape: ButtonShape.CircleBorder19,
                    padding: ButtonPadding.PaddingAll10,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold16WhiteA700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
