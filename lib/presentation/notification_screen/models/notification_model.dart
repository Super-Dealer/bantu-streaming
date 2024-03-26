import '../../../core/app_export.dart';
import 'notificationlist_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationlistItemModel>> notificationlistItemList = Rx([
    NotificationlistItemModel(
        duration: "let's get 100% cashback valid only 6 hours".obs,
        duration1: "10 minutes ago".obs),
    NotificationlistItemModel(
        duration:
            "long holiday? Let's watch and relax with fun movies on Movistar"
                .obs,
        duration1: "35 minutes ago".obs),
    NotificationlistItemModel(
        duration:
            "Want to get 3 months of watching free movies on Movistar".obs,
        duration1: "1 hour ago".obs),
    NotificationlistItemModel(
        duration:
            "Congrats, you got a 50 discount voucher valid for up to 7 days"
                .obs,
        duration1: "20 hours ago".obs),
    NotificationlistItemModel(
        duration: "let's get 50% cashback valid only 12 hours".obs,
        duration1: "15 April 2022".obs),
    NotificationlistItemModel(
        duration: "let's get 70% cashback valid only 24 hours".obs,
        duration1: "14 April 2022".obs)
  ]);
}
