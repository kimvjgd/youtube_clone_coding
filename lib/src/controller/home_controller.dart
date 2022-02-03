import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/models/youtube_video_result.dart';
import 'package:youtube_clone_coding/src/repository/youtube_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult(totalResults: 0, nextPagetoken: '', items: [], resultsPerPage: 0).obs;

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }
  void _videoLoad() async {
    YoutubeVideoResult youtubeVideoResult = await YoutubeRepository.to.loadVideos();
    if(youtubeVideoResult != null && youtubeVideoResult.items!=null && youtubeVideoResult.items.length>0){
      youtubeResult(youtubeVideoResult);
    }
  }
}