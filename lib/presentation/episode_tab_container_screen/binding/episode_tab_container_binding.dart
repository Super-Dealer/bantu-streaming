import 'package:bantu/presentation/episode_tab_container_screen/controller/episode_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EpisodeTabContainerScreen.
///
/// This class ensures that the EpisodeTabContainerController is created when the
/// EpisodeTabContainerScreen is first loaded.
class EpisodeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EpisodeTabContainerController());
  }
}
