import '../../../core/app_export.dart';

/// This class is used in the [recentsearches_item_widget] screen.
class RecentsearchesItemModel {
  Rx<String>? tabs = Rx("Marvel");

  Rx<bool>? isSelected = Rx(false);
}
