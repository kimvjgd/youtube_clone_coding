import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/controller/app_controller.dart';
import 'package:youtube_clone_coding/src/repository/youtube_repository.dart';

class InitBinding implements  Bindings {
  @override
  void dependencies() {
    Get.put(YoutubeRepository(), permanent: true);
    Get.put(AppController());
  }

}