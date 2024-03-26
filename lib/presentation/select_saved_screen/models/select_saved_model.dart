import '../../../core/app_export.dart';
import 'selectsavedlist_item_model.dart';

/// This class defines the variables used in the [select_saved_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectSavedModel {
  Rx<List<SelectsavedlistItemModel>> selectsavedlistItemList = Rx([
    SelectsavedlistItemModel(
        image: ImageConstant.imgRectangle121031.obs,
        theIceAgeAdventures: "The Ice Age: Adventures of buck Wild".obs,
        actionAdventure: "Action, Adventure".obs),
    SelectsavedlistItemModel(
        image: ImageConstant.imgRectangle12103.obs,
        theIceAgeAdventures: "Captain America: The Winter Soldier".obs,
        actionAdventure: "Action, Adventure".obs),
    SelectsavedlistItemModel(
        image: ImageConstant.imgRectangle12103112x112.obs,
        theIceAgeAdventures: "Captain Marvel".obs,
        actionAdventure: "Action, Adventure".obs),
    SelectsavedlistItemModel(
        image: ImageConstant.imgRectangle121032.obs,
        theIceAgeAdventures: "Encanto 2021".obs,
        actionAdventure: "Action, Adventure".obs)
  ]);
}
