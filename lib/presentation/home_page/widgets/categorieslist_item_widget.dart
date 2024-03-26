import '../models/categorieslist_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class CategorieslistItemWidget extends StatelessWidget {
  CategorieslistItemWidget(
    this.categorieslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorieslistItemModel categorieslistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.style.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder17,
      ),
      child: Obx(
        () => Text(
          categorieslistItemModelObj.tabs!.value,
          style: theme.textTheme.bodySmall,
        ),
      ),
    );
  }
}
