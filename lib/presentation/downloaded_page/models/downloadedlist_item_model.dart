import '../../../core/app_export.dart';

/// This class is used in the [downloadedlist_item_widget] screen.
class DownloadedlistItemModel {
  DownloadedlistItemModel({
    this.image,
    this.actionAdventure,
    this.twentyThousandFiveHundredThirt,
    this.filesize,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle12103);
    actionAdventure = actionAdventure ?? Rx("Action, Adventure");
    twentyThousandFiveHundredThirt =
        twentyThousandFiveHundredThirt ?? Rx("2:05:32");
    filesize = filesize ?? Rx("1.2GB");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? actionAdventure;

  Rx<String>? twentyThousandFiveHundredThirt;

  Rx<String>? filesize;

  Rx<String>? id;
}
