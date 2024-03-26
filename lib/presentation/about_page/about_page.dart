import 'widgets/about_item_widget.dart';
import 'models/about_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/about_controller.dart';
import 'models/about_model.dart';

// ignore_for_file: must_be_immutable
class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  AboutController controller = Get.put(AboutController(AboutModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildGenreColumn()));
  }

  /// Section Widget
  Widget _buildGenreColumn() {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(right: 107.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_genre".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 126.h,
                                child: Text("msg_adventure_comedy2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelLargeSemiBold
                                        .copyWith(height: 1.50)))
                          ]),
                      Padding(
                          padding: EdgeInsets.only(left: 53.h, bottom: 18.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_language_text".tr,
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 3.v),
                                Text("lbl_english".tr,
                                    style: CustomTextStyles.labelLargeSemiBold)
                              ]))
                    ])),
            SizedBox(height: 15.v),
            Padding(
                padding: EdgeInsets.only(right: 98.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_year".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_2019".tr,
                                    style: CustomTextStyles.labelLargeSemiBold))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_country".tr,
                                style: theme.textTheme.labelMedium),
                            SizedBox(height: 2.v),
                            Text("lbl_united_states".tr,
                                style: CustomTextStyles.labelLargeSemiBold)
                          ])
                    ])),
            SizedBox(height: 17.v),
            Text("lbl_actors".tr, style: theme.textTheme.labelMedium),
            SizedBox(height: 15.v),
            SizedBox(
                height: 127.v,
                child: Obx(() => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: controller
                        .aboutModelObj.value.aboutItemList.value.length,
                    itemBuilder: (context, index) {
                      AboutItemModel model = controller
                          .aboutModelObj.value.aboutItemList.value[index];
                      return AboutItemWidget(model);
                    })))
          ]))
    ]));
  }
}
