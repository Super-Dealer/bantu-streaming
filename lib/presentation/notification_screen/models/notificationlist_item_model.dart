import '../../../core/app_export.dart';

/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {
  NotificationlistItemModel({
    this.duration,
    this.duration1,
    this.id,
  }) {
    duration = duration ?? Rx("let's get 100% cashback valid only 6 hours");
    duration1 = duration1 ?? Rx("10 minutes ago");
    id = id ?? Rx("");
  }

  Rx<String>? duration;

  Rx<String>? duration1;

  Rx<String>? id;
}
