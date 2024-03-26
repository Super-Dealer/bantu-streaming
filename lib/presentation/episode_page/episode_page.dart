import 'widgets/episode_item_widget.dart';
import 'models/episode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/episode_controller.dart';
import 'models/episode_model.dart';

// ignore_for_file: must_be_immutable
class EpisodePage extends StatelessWidget {
  EpisodePage({Key? key}) : super(key: key);

  EpisodeController controller = Get.put(EpisodeController(EpisodeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount: controller.episodeModelObj.value
                              .episodeItemList.value.length,
                          itemBuilder: (context, index) {
                            EpisodeItemModel model = controller.episodeModelObj
                                .value.episodeItemList.value[index];
                            return EpisodeItemWidget(model);
                          })))
                ]))));
  }
}
