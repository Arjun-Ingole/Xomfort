import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.UrbanistRegular14:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.UrbanistRegular10:
        return TextStyle(
          color: ColorConstant.redA200,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.UrbanistRegular10Green500:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case TextFormFieldShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillCyan601:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillRedA20033:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGreen40033:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillCyan601:
        return ColorConstant.cyan601;
      case TextFormFieldVariant.FillRedA20033:
        return ColorConstant.redA20033;
      case TextFormFieldVariant.FillGreen40033:
        return ColorConstant.green40033;
      default:
        return ColorConstant.bluegray901;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillCyan601:
        return true;
      case TextFormFieldVariant.FillRedA20033:
        return true;
      case TextFormFieldVariant.FillGreen40033:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTB25:
        return getPadding(
          left: 20,
          top: 20,
          right: 20,
          bottom: 25,
        );
      case TextFormFieldPadding.PaddingT9:
        return getPadding(
          left: 8,
          top: 9,
          right: 8,
          bottom: 8,
        );
      case TextFormFieldPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case TextFormFieldPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      default:
        return getPadding(
          left: 20,
          top: 20,
          right: 20,
          bottom: 21,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  CircleBorder16,
  CircleBorder19,
}
enum TextFormFieldPadding {
  PaddingTB25,
  PaddingTB21,
  PaddingT9,
  PaddingAll6,
  PaddingAll11,
}
enum TextFormFieldVariant {
  FillBluegray901,
  FillCyan601,
  FillRedA20033,
  FillGreen40033,
}
enum TextFormFieldFontStyle {
  UrbanistSemiBold14,
  UrbanistRegular14,
  UrbanistSemiBold16,
  UrbanistRegular10,
  UrbanistRegular10Green500,
}
