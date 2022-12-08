import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillCyan601:
        return ColorConstant.cyan601;
      case ButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case ButtonVariant.FillCyan600:
        return ColorConstant.cyan600;
      case ButtonVariant.FillRedA2001e:
        return ColorConstant.redA2001e;
      case ButtonVariant.FillGreenA7001e:
        return ColorConstant.greenA7001e;
      case ButtonVariant.OutlineCyan601:
        return null;
      default:
        return ColorConstant.cyan601;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineCyan601:
        return Border.all(
          color: ColorConstant.cyan601,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGreenA7003f:
      case ButtonVariant.FillCyan601:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillCyan600:
      case ButtonVariant.FillRedA2001e:
      case ButtonVariant.FillGreenA7001e:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.50,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.FillCyan601:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillCyan600:
      case ButtonVariant.FillRedA2001e:
      case ButtonVariant.FillGreenA7001e:
      case ButtonVariant.OutlineCyan601:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.greenA7003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          )
        ];
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistSemiBold10:
        return TextStyle(
          color: ColorConstant.redA200,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold10Cyan601:
        return TextStyle(
          color: ColorConstant.cyan601,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: ColorConstant.cyan601,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.UrbanistSemiBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder27,
  RoundedBorder6,
  CircleBorder19,
}
enum ButtonPadding {
  PaddingAll18,
  PaddingAll6,
  PaddingAll10,
}
enum ButtonVariant {
  OutlineGreenA7003f,
  FillCyan601,
  FillGray800,
  FillCyan600,
  FillRedA2001e,
  FillGreenA7001e,
  OutlineCyan601,
}
enum ButtonFontStyle {
  UrbanistRomanBold16,
  UrbanistSemiBold10,
  UrbanistSemiBold10Cyan601,
  UrbanistSemiBold16,
  UrbanistSemiBold16WhiteA700,
}
