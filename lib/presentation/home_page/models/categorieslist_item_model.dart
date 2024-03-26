import '../../../core/app_export.dart';

/// This class is used in the [categorieslist_item_widget] screen.
class CategorieslistItemModel {
  CategorieslistItemModel({
    this.tabs,
    this.id,
  }) {
    tabs = tabs ?? Rx("All");
    id = id ?? Rx("");
  }

  Rx<String>? tabs;

  Rx<String>? id;
}
