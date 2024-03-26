import '../../../core/app_export.dart';
import 'downloadedlist_item_model.dart';

/// This class defines the variables used in the [downloaded_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadedModel {
  Rx<List<DownloadedlistItemModel>> downloadedlistItemList = Rx([
    DownloadedlistItemModel(
        image: ImageConstant.imgRectangle12103.obs,
        actionAdventure: "Action, Adventure".obs,
        twentyThousandFiveHundredThirt: "2:05:32".obs,
        filesize: "1.2GB".obs),
    DownloadedlistItemModel(
        image: ImageConstant.imgRectangle12103112x112.obs,
        actionAdventure: "Action, Adventure".obs,
        twentyThousandFiveHundredThirt: "2:05:32".obs,
        filesize: "1.2GB".obs)
  ]);
}
