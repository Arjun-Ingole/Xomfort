import '../controller/carousel_two_controller.dart';
import '../models/sliderfindthebesth_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';

// ignore: must_be_immutable
class SliderfindthebesthItemWidget extends StatelessWidget {
  SliderfindthebesthItemWidget(this.sliderfindthebesthItemModelObj);

  SliderfindthebesthItemModel sliderfindthebesthItemModelObj;

  var controller = Get.find<CarouselTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              100.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                left: 26,
                top: 4,
                right: 25,
              ),
              child: Text(
                "msg_find_the_best_h".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtUrbanistRomanBold32,
              ),
            ),
            Container(
              width: getHorizontalSize(
                366.00,
              ),
              margin: getMargin(
                left: 6,
                top: 23,
                right: 6,
              ),
              child: Text(
                "msg_lorem_ipsum_dol3".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtUrbanistRegular16.copyWith(
                  letterSpacing: 0.20,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: getMargin(
                  top: 88,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      61.00,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      width: 380,
                      text: "lbl_next".tr,
                      variant: ButtonVariant.FillCyan601,
                    ),
                    CustomButton(
                      width: 380,
                      text: "lbl_skip".tr,
                      margin: getMargin(
                        top: 12,
                      ),
                      variant: ButtonVariant.FillGray800,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
