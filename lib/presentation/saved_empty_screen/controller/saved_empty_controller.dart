import '../../../core/app_export.dart';
import '../models/saved_empty_model.dart';

/// A controller class for the SavedEmptyScreen.
///
/// This class manages the state of the SavedEmptyScreen, including the
/// current savedEmptyModelObj
class SavedEmptyController extends GetxController {
  Rx<SavedEmptyModel> savedEmptyModelObj = SavedEmptyModel().obs;
}
