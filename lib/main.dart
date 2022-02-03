import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_coding/src/app.dart';
import 'package:youtube_clone_coding/src/binding/init_binding.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "YoutubeCloneApp",
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>App()),
      ],
    );
  }
}
