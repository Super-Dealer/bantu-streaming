import '../../../core/app_export.dart';
import 'savedlist_item_model.dart';

/// This class defines the variables used in the [saved_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedModel {
  Rx<List<SavedlistItemModel>> savedlistItemList = Rx([
    SavedlistItemModel(
        image: ImageConstant.imgRectangle121031.obs,
        theIceAgeAdventures: "The Ice Age: Adventures of buck Wild".obs,
        actionAdventure: "Action, Adventure".obs),
    SavedlistItemModel(
        image: ImageConstant.imgRectangle121033.obs,
        theIceAgeAdventures: "Free Guy 2021".obs,
        actionAdventure: "Action, Adventure".obs)
  ]);
}
