import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/models/statistics.dart';
import 'package:youtube_clone_coding/src/models/youtube_video_result.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult> loadVideos() async {
    String url =
        "/youtube/v3/search?part=snippet&maxResults=10&type=channel&key=AIzaSyB5E_J-BEjxOekMSsa3oyqM1hVXj5mE-jk&q=자유로운동동";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      } else {
        return YoutubeVideoResult.fromJson(response.body);      // 여기 else는 내가 대충 넣은거... 말도 안되는 상황이다.
      }
    }
  }

  Future<Statistics> getVideoInfoById(String videoId) async {
    String url =
        "/youtube/v3/videos?part=snippet,statistics&key=AIzaSyB5E_J-BEjxOekMSsa3oyqM1hVXj5mE-jk&id=$videoId";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data= response.body["items"][0];
        return Statistics.fromJson(data["statistics"]);
      } else {
        return Statistics.fromJson(response.body);      // 여기 else는 내가 대충 넣은거... 말도 안되는 상황이다.
      }
    }
  }

}
