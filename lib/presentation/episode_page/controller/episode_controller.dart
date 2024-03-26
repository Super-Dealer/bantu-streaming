import '../../../core/app_export.dart';
import '../models/episode_model.dart';

/// A controller class for the EpisodePage.
///
/// This class manages the state of the EpisodePage, including the
/// current episodeModelObj
class EpisodeController extends GetxController {
  EpisodeController(this.episodeModelObj);

  Rx<EpisodeModel> episodeModelObj;
}
