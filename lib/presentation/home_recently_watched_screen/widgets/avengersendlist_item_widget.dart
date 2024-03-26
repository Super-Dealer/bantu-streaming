import '../models/avengersendlist_item_model.dart';
import '../controller/home_recently_watched_controller.dart';
import 'package:bantu/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class AvengersendlistItemWidget extends StatelessWidget {
  AvengersendlistItemWidget(
    this.avengersendlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AvengersendlistItemModel avengersendlistItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 214.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 86.v,
            width: 214.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: avengersendlistItemModelObj.image!.value,
                    height: 86.v,
                    radius: BorderRadius.vertical(
                      top: Radius.circular(10.h),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.v),
                    child: Container(
                      height: 2.v,
                      width: 194.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                      ),
                      child: ClipRRect(
                        child: LinearProgressIndicator(
                          value: 0.24,
                          backgroundColor: theme.colorScheme.primaryContainer,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 139.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  avengersendlistItemModelObj.doctorStrange!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Obx(
                  () => Text(
                    avengersendlistItemModelObj
                        .fifteenThousandThirtyFive!.value,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Obx(
                  () => Text(
                    avengersendlistItemModelObj.zipcode!.value,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 128.h),
                child: Obx(
                  () => CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      imagePath: avengersendlistItemModelObj.lightBulb!.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
