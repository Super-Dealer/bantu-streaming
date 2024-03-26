import '../../../core/app_export.dart';
import '../models/similiar_model.dart';

/// A controller class for the SimiliarPage.
///
/// This class manages the state of the SimiliarPage, including the
/// current similiarModelObj
class SimiliarController extends GetxController {
  SimiliarController(this.similiarModelObj);

  Rx<SimiliarModel> similiarModelObj;
}
