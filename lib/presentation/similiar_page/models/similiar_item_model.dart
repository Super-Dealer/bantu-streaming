import '../../../core/app_export.dart';

/// This class is used in the [similiar_item_widget] screen.
class SimiliarItemModel {
  SimiliarItemModel({
    this.image,
    this.image1,
    this.image2,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle12078);
    image1 = image1 ?? Rx(ImageConstant.imgRectangle12078140x102);
    image2 = image2 ?? Rx(ImageConstant.imgRectangle120781);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? id;
}
