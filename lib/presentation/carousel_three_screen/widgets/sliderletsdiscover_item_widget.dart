import '../controller/carousel_three_controller.dart';
import '../models/sliderletsdiscover_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_button.dart';

// ignore: must_be_immutable
class SliderletsdiscoverItemWidget extends StatelessWidget {
  SliderletsdiscoverItemWidget(this.sliderletsdiscoverItemModelObj);

  SliderletsdiscoverItemModel sliderletsdiscoverItemModelObj;

  var controller = Get.find<CarouselThreeController>();

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
            Padding(
              padding: getPadding(
                left: 20,
                top: 5,
                right: 20,
              ),
              child: Text(
                "msg_let_s_discover".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold32,
              ),
            ),
            Container(
              width: getHorizontalSize(
                366.00,
              ),
              margin: getMargin(
                left: 6,
                top: 30,
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
