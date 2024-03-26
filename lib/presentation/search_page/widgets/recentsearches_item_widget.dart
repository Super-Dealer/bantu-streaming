import '../models/recentsearches_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class RecentsearchesItemWidget extends StatelessWidget {
  RecentsearchesItemWidget(
    this.recentsearchesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentsearchesItemModel recentsearchesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 8.v,
          right: 8.h,
          bottom: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          recentsearchesItemModelObj.tabs!.value,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(right: 4.h),
        ),
        selected: (recentsearchesItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray900,
        selectedColor: appTheme.gray900,
        shape: (recentsearchesItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.whiteA700.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              ),
        onSelected: (value) {
          recentsearchesItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
