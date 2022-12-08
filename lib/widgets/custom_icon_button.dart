import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll26:
        return getPadding(
          all: 26,
        );
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case IconButtonVariant.OutlineIndigoA20014:
        return ColorConstant.teal901;
      default:
        return ColorConstant.cyan601;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder40:
        return BorderRadius.circular(
          getHorizontalSize(
            40.00,
          ),
        );
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigoA20014:
        return [
          BoxShadow(
            color: ColorConstant.indigoA20014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          )
        ];
      case IconButtonVariant.FillCyan601:
      case IconButtonVariant.FillGray800:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  CircleBorder40,
  RoundedBorder16,
}
enum IconButtonPadding {
  PaddingAll7,
  PaddingAll26,
  PaddingAll20,
}
enum IconButtonVariant {
  FillCyan601,
  FillGray800,
  OutlineIndigoA20014,
}
