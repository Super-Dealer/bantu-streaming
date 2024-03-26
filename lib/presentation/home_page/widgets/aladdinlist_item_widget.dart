import '../models/aladdinlist_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class AladdinlistItemWidget extends StatelessWidget {
  AladdinlistItemWidget(
    this.aladdinlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AladdinlistItemModel aladdinlistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: Obx(
        () => CustomImageView(
          imagePath: aladdinlistItemModelObj.aladdin!.value,
          width: 124.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
