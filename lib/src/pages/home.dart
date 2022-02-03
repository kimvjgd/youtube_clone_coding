import 'package:flutter/material.dart';
import 'package:youtube_clone_coding/src/components/custom_appbar.dart';
import 'package:youtube_clone_coding/src/components/video_widget.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
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
                child: VideoWidget());
          },
          childCount: 10,
        ))
      ],
    ));
  }
}
