import '../models/aladdinlist1_item_model.dart';
import '../controller/home_recently_watched_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class Aladdinlist1ItemWidget extends StatelessWidget {
  Aladdinlist1ItemWidget(
    this.aladdinlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Aladdinlist1ItemModel aladdinlist1ItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.h,
      child: Obx(
        () => CustomImageView(
          imagePath: aladdinlist1ItemModelObj.aladdin!.value,
          width: 124.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
