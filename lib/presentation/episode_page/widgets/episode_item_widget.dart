import '../models/episode_item_model.dart';
import '../controller/episode_controller.dart';
import 'package:bantu/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class EpisodeItemWidget extends StatelessWidget {
  EpisodeItemWidget(
    this.episodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EpisodeItemModel episodeItemModelObj;

  var controller = Get.find<EpisodeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 131.adaptSize,
            width: 131.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12046,
                  height: 131.adaptSize,
                  width: 131.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Column(
              children: [
                SizedBox(
                  width: 180.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          episodeItemModelObj.trailer!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath: episodeItemModelObj.trailer1!.value,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 175.h,
                  child: Obx(
                    () => Text(
                      episodeItemModelObj.aladdinAStreet!.value,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
