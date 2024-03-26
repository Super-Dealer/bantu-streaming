import '../../../core/app_export.dart';

/// This class is used in the [avengersendlist_item_widget] screen.
class AvengersendlistItemModel {
  AvengersendlistItemModel({
    this.image,
    this.doctorStrange,
    this.fifteenThousandThirtyFive,
    this.zipcode,
    this.lightBulb,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle6);
    doctorStrange =
        doctorStrange ?? Rx("Doctor strange :  In The Multiverse of Madness");
    fifteenThousandThirtyFive = fifteenThousandThirtyFive ?? Rx("1:50:35");
    zipcode = zipcode ?? Rx("2021");
    lightBulb = lightBulb ?? Rx(ImageConstant.imgRectangle9);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? doctorStrange;

  Rx<String>? fifteenThousandThirtyFive;

  Rx<String>? zipcode;

  Rx<String>? lightBulb;

  Rx<String>? id;
}
