import '../../../core/app_export.dart';

/// This class is used in the [history_item_widget] screen.
class HistoryItemModel {
  HistoryItemModel({
    this.image,
    this.mysteryOfMuye,
    this.actionAdventure,
    this.twentyThousandFiveHundredThirt,
    this.filesize,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle121034);
    mysteryOfMuye =
        mysteryOfMuye ?? Rx("Mystery of Muye : The Guardian of the Mountain");
    actionAdventure = actionAdventure ?? Rx("Action, Adventure");
    twentyThousandFiveHundredThirt =
        twentyThousandFiveHundredThirt ?? Rx("2:05:32");
    filesize = filesize ?? Rx("1.2GB");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? mysteryOfMuye;

  Rx<String>? actionAdventure;

  Rx<String>? twentyThousandFiveHundredThirt;

  Rx<String>? filesize;

  Rx<String>? id;
}
