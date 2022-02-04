import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/models/statistics.dart';
import 'package:youtube_clone_coding/src/models/video.dart';
import 'package:youtube_clone_coding/src/repository/youtube_repository.dart';

class VideoController extends GetxController {
  Video video;
  VideoController({required this.video});
  Rx<Statistics> statistics = Statistics(viewCount: '', likeCount: '', favoriteCount: '', commentCount: '').obs;
  @override
  void onInit() async {
    Statistics loadStatistics = await YoutubeRepository.to.getVideoInfoById(video.id.channelId);
    statistics(loadStatistics);
    super.onInit();
  }
  String get viewCountString => "조회수 ${statistics.value.viewCount?? '-'}회";
}