import '../../../core/app_export.dart';
import '../models/episode_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EpisodeTabContainerScreen.
///
/// This class manages the state of the EpisodeTabContainerScreen, including the
/// current episodeTabContainerModelObj
class EpisodeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<EpisodeTabContainerModel> episodeTabContainerModelObj =
      EpisodeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
