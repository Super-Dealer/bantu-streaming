import '../models/categorycomedy_item_model.dart';
import '../controller/category_comedy_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class CategorycomedyItemWidget extends StatelessWidget {
  CategorycomedyItemWidget(
    this.categorycomedyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorycomedyItemModel categorycomedyItemModelObj;

  var controller = Get.find<CategoryComedyController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: categorycomedyItemModelObj.rectangle!.value,
        width: 102.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
