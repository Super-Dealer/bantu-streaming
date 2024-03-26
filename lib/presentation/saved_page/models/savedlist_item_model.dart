import '../../../core/app_export.dart';

/// This class is used in the [savedlist_item_widget] screen.
class SavedlistItemModel {
  SavedlistItemModel({
    this.image,
    this.theIceAgeAdventures,
    this.actionAdventure,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle121031);
    theIceAgeAdventures =
        theIceAgeAdventures ?? Rx("The Ice Age: Adventures of buck Wild");
    actionAdventure = actionAdventure ?? Rx("Action, Adventure");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? theIceAgeAdventures;

  Rx<String>? actionAdventure;

  Rx<String>? id;
}
