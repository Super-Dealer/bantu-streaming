import '../models/widget1_item_model.dart';
import '../controller/home_recently_watched_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  Widget1ItemWidget(
    this.widget1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget1ItemModel widget1ItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imageNotFound,
        height: 296.v,
      ),
    );
  }
}
