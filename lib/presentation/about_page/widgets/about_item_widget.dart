import '../models/about_item_model.dart';
import '../controller/about_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class AboutItemWidget extends StatelessWidget {
  AboutItemWidget(
    this.aboutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AboutItemModel aboutItemModelObj;

  var controller = Get.find<AboutController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127.v,
      width: 104.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: aboutItemModelObj.menaMassoud!.value,
              width: 104.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 54.h,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 6.v,
              ),
              child: Obx(
                () => Text(
                  aboutItemModelObj.menaMassoud1!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
