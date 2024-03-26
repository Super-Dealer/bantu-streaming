import '../../../core/app_export.dart';
import 'history_item_model.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {
  Rx<List<HistoryItemModel>> historyItemList = Rx([
    HistoryItemModel(
        image: ImageConstant.imgRectangle121034.obs,
        mysteryOfMuye: "Mystery of Muye : The Guardian of the Mountain".obs,
        actionAdventure: "Action, Adventure".obs,
        twentyThousandFiveHundredThirt: "2:05:32".obs,
        filesize: "1.2GB".obs),
    HistoryItemModel(
        image: ImageConstant.imgRectangle121035.obs,
        mysteryOfMuye: "Spider-Man : No Way Home".obs,
        actionAdventure: "Action, Adventure".obs,
        twentyThousandFiveHundredThirt: "2:05:32".obs,
        filesize: "1.2GB".obs),
    HistoryItemModel(
        image: ImageConstant.imgRectangle121037.obs,
        mysteryOfMuye: "Luca (2021)".obs,
        actionAdventure: "Action, Adventure".obs,
        twentyThousandFiveHundredThirt: "2:05:32".obs,
        filesize: "1.2GB".obs)
  ]);
}
