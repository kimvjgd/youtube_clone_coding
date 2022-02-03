import 'package:flutter/material.dart';
import 'package:youtube_clone_coding/src/components/custom_appbar.dart';
import 'package:youtube_clone_coding/src/components/video_widget.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(() => CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  title: CustomAppBar(),
                  floating: true,
                  snap: true,
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Get.toNamed("/detail/417823");
                        },
                        child: VideoWidget(video: controller.youtubeResult.value.items[index]));
                  },
                  childCount: controller.youtubeResult.value.items == null
                      ? 0
                      : controller.youtubeResult.value.items.length,
                ))
              ],
            )));
  }
}
