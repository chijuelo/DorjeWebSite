import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  // // final VideoPlayerController video1Controller =
  // //     VideoPlayerController.asset('assets/videos/v1.mp4');
  // // final VideoPlayerController video1Controller =
  // // VideoPlayerController.networkUrl(Uri.parse(
  // //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));
  // // VideoPlayerController.networkUrl(
  // //     Uri.parse('https://youtu.be/m-0lWgLKNvk'));
  // // late VideoPlayerController video1Controller;

  // final VideoPlayerController video1Controller =
  //     VideoPlayerController.asset('assets/videos/v1.mp4');
  // final VideoPlayerController video2Controller =
  //     VideoPlayerController.asset('assets/videos/v2.mp4');
  // final VideoPlayerController video3Controller =
  //     VideoPlayerController.asset('assets/videos/v5.mp4');
  // final VideoPlayerController video4Controller =
  //     VideoPlayerController.asset('assets/videos/v3.mp4');
  // final VideoPlayerController video5Controller =
  //     VideoPlayerController.asset('assets/videos/v4.mp4');
  // final VideoPlayerController video6Controller =
  //     VideoPlayerController.asset('assets/videos/v2.mp4');

  // late ChewieController chewie1Controller;

  // // late YoutubePlayerController video1Controller;
  // // late YoutubePlayerController video2Controller;
  // // late YoutubePlayerController video3Controller;
  // // late YoutubePlayerController video4Controller;
  // // late YoutubePlayerController video5Controller;
  // // late YoutubePlayerController video6Controller;

  // @override
  // void onInit() {
  //   //   // video1Controller = VideoPlayerController.networkUrl(
  //   //   //     Uri.parse('https://youtu.be/m-0lWgLKNvk'))
  //   //   //   // Uri.parse(
  //   //   //   //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
  //   //   //   ..initialize().then((_) {
  //   //   //     video1Controller.setLooping(true);
  //   //   //     video1Controller.play();
  //   //   //   });

  //   /* video1Controller.initialize().then((_) {
  //     video1Controller.setLooping(true);
  //     video1Controller.play();
  //   }); */

  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     // mutes the video
  //     video1Controller.setVolume(0);
  //     // Plays the video once the widget is build and loaded.
  //     video1Controller.play();
  //   });

  //   chewie1Controller = ChewieController(
  //       videoPlayerController: video1Controller,
  //       autoInitialize: true,
  //       autoPlay: true,
  //       looping: true,
  //       showControls: false,
  //       allowMuting: true,
  //       errorBuilder: (context, errorMenssage) {
  //         return Center(
  //           child: Text(
  //             errorMenssage,
  //             style: const TextStyle(color: Colors.white),
  //           ),
  //         );
  //       });

  //   // video1Controller.initialize().then((_) {
  //   //   video1Controller.setLooping(true);
  //   //   video1Controller.play();
  //   // });
  //   video2Controller.initialize().then((_) {
  //     video2Controller.setLooping(true);
  //     video2Controller.play();
  //   });
  //   video3Controller.initialize().then((_) {
  //     video3Controller.setLooping(true);
  //     video3Controller.play();
  //   });
  //   video4Controller.initialize().then((_) {
  //     video4Controller.setLooping(true);
  //     video4Controller.play();
  //   });
  //   video5Controller.initialize().then((_) {
  //     video5Controller.setLooping(true);
  //     video5Controller.play();
  //   });
  //   video6Controller.initialize().then((_) {
  //     video6Controller.setLooping(true);
  //     video6Controller.play();
  //   });

  //   // video1Controller.initialize().then((_) {
  //   //   video1Controller.setLooping(true);
  //   //   video1Controller.play();
  //   // });
  //   // video2Controller.initialize().then((_) {
  //   //   video2Controller.setLooping(true);
  //   //   video2Controller.play();
  //   // });
  //   // video3Controller.initialize().then((_) {
  //   //   video3Controller.setLooping(true);
  //   //   video3Controller.play();
  //   // });
  //   // video4Controller.initialize().then((_) {
  //   //   video4Controller.setLooping(true);
  //   //   video4Controller.play();
  //   // });
  //   // video5Controller.initialize().then((_) {
  //   //   video5Controller.setLooping(true);
  //   //   video5Controller.play();
  //   // });
  //   // video6Controller.initialize().then((_) {
  //   //   video6Controller.setLooping(true);
  //   //   video6Controller.play();
  //   // });

  //   // video1Controller = YoutubePlayerController(
  //   //   // initialVideoId:
  //   //   //     YoutubePlayer.convertUrlToId("https://youtu.be/m-0lWgLKNvk")!,
  //   //   initialVideoId: 'gQDByCdjUXw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );

  //   // video2Controller = YoutubePlayerController(
  //   //   initialVideoId: 'iLnmTe5Q2Qw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );
  //   // video3Controller = YoutubePlayerController(
  //   //   initialVideoId: 'iLnmTe5Q2Qw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );
  //   // video4Controller = YoutubePlayerController(
  //   //   initialVideoId: 'iLnmTe5Q2Qw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );
  //   // video5Controller = YoutubePlayerController(
  //   //   initialVideoId: 'iLnmTe5Q2Qw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );
  //   // video6Controller = YoutubePlayerController(
  //   //   initialVideoId: 'iLnmTe5Q2Qw',
  //   //   flags: const YoutubePlayerFlags(
  //   //     autoPlay: true,
  //   //     mute: true,
  //   //   ),
  //   // );
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   video1Controller.dispose();
  //   super.dispose();
  // }

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }
}
