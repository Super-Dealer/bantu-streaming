import '../models/language_item_model.dart';
import '../controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  LanguageItemWidget(
    this.languageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguageItemModel languageItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.whiteCardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: languageItemModelObj.england!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 12.v,
              bottom: 9.v,
            ),
            child: Obx(
              () => Text(
                languageItemModelObj.england1!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: languageItemModelObj.england2!.value,
                height: 6.v,
                alignment: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
