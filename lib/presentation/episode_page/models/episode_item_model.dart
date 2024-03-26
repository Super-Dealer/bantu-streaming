import '../../../core/app_export.dart';

/// This class is used in the [episode_item_widget] screen.
class EpisodeItemModel {
  EpisodeItemModel({
    this.trailer,
    this.trailer1,
    this.aladdinAStreet,
    this.id,
  }) {
    trailer = trailer ?? Rx("Trailer");
    trailer1 = trailer1 ?? Rx(ImageConstant.imgDownload);
    aladdinAStreet = aladdinAStreet ??
        Rx("Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...");
    id = id ?? Rx("");
  }

  Rx<String>? trailer;

  Rx<String>? trailer1;

  Rx<String>? aladdinAStreet;

  Rx<String>? id;
}
