import 'controller/booking_ongoing1_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/presentation/booking_cancelled_page/booking_cancelled_page.dart';
import 'package:xomfort/presentation/booking_completed_page/booking_completed_page.dart';
import 'package:xomfort/presentation/booking_ongoing_page/booking_ongoing_page.dart';
import 'package:xomfort/widgets/app_bar/appbar_image.dart';
import 'package:xomfort/widgets/app_bar/appbar_title.dart';
import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';

class BookingOngoing1Screen extends GetWidget<BookingOngoing1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
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
            text: "lbl_my_bookings".tr,
            margin: getMargin(
              left: 17,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                22.00,
              ),
              width: getHorizontalSize(
                21.00,
              ),
              svgPath: ImageConstant.imgSearchWhiteA700,
              margin: getMargin(
                top: 5,
                bottom: 4,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              margin: getMargin(
                left: 24,
                top: 39,
                right: 24,
              ),
              decoration: AppDecoration.fillGray900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      380.00,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          22.50,
                        ),
                      ),
                    ),
                    child: TabBar(
                      controller: controller.group137Controller,
                      tabs: [
                        Tab(
                          text: "lbl_ongoing".tr,
                        ),
                        Tab(
                          text: "lbl_completed".tr,
                        ),
                        Tab(
                          text: "lbl_canceled".tr,
                        ),
                      ],
                      labelColor: ColorConstant.whiteA700,
                      unselectedLabelColor: ColorConstant.cyan601,
                      indicator: BoxDecoration(
                        color: ColorConstant.cyan601,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            22.50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 30,
                    ),
                    height: getVerticalSize(
                      694.00,
                    ),
                    child: TabBarView(
                      controller: controller.group137Controller,
                      children: [
                        BookingOngoingPage(),
                        BookingCompletedPage(),
                        BookingCancelledPage(),
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
