import '../../../core/app_export.dart';
import '../models/select_saved_model.dart';

/// A controller class for the SelectSavedScreen.
///
/// This class manages the state of the SelectSavedScreen, including the
/// current selectSavedModelObj
class SelectSavedController extends GetxController {
  Rx<SelectSavedModel> selectSavedModelObj = SelectSavedModel().obs;
}
