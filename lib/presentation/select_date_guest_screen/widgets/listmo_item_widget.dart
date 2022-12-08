import '../controller/select_date_guest_controller.dart';
import '../models/listmo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

// ignore: must_be_immutable
class ListmoItemWidget extends StatelessWidget {
  ListmoItemWidget(this.listmoItemModelObj);

  ListmoItemModel listmoItemModelObj;

  var controller = Get.find<SelectDateGuestController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 10,
        top: 6.4,
        right: 10,
        bottom: 6.4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_mo".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 1,
            ),
            child: Text(
              "lbl_tu".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_we".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              bottom: 1,
            ),
            child: Text(
              "lbl_th".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 37,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_fr".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 37,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_sa".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_su".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanMedium14WhiteA700.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
