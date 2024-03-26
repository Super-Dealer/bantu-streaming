import '../../../core/app_export.dart';
import 'episode_item_model.dart';

/// This class defines the variables used in the [episode_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EpisodeModel {
  Rx<List<EpisodeItemModel>> episodeItemList = Rx([
    EpisodeItemModel(
        trailer: "Trailer".obs,
        trailer1: ImageConstant.imgDownload.obs,
        aladdinAStreet:
            "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find..."
                .obs),
    EpisodeItemModel(
        trailer: "Trailer".obs,
        aladdinAStreet:
            "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find..."
                .obs)
  ]);
}
