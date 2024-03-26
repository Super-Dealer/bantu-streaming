import '../models/frame2_item_model.dart';
import '../controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: Obx(
        () => CustomImageView(
          imagePath: frame2ItemModelObj.rectangle!.value,
          width: 98.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
