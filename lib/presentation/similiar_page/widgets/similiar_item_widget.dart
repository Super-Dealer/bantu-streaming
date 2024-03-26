import '../models/similiar_item_model.dart';
import '../controller/similiar_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget(
    this.similiarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SimiliarItemModel similiarItemModelObj;

  var controller = Get.find<SimiliarController>();

  @override
  Widget build(BuildContext context) {
    return _buildRowImages();
  }

  /// Section Widget
  Widget _buildRowImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image!.value,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(right: 8.h),
            ),
          ),
        ),
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image1!.value,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.h),
            ),
          ),
        ),
        Expanded(
          child: Obx(
            () => CustomImageView(
              imagePath: similiarItemModelObj.image2!.value,
              width: 102.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 8.h),
            ),
          ),
        ),
      ],
    );
  }
}
