import 'package:flutter/material.dart';
import 'package:metube/screen/dashboard/shorts/shorts_view.dart';

class ShortsPageView extends StatelessWidget {
  const ShortsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          Shorts(
              videoURL:
                  'https://assets.mixkit.co/videos/preview/mixkit-woman-petting-a-cat-1542-large.mp4',
              videDescription: 'des 1'),
          Shorts(
              videoURL:
                  'https://assets.mixkit.co/videos/preview/mixkit-cellphone-under-a-lamp-1793-large.mp4',
              videDescription: 'des 2'),
          Shorts(
              videoURL:
                  'https://assets.mixkit.co/videos/preview/mixkit-urban-woman-with-a-smoke-bomb-at-a-forest-1861-large.mp4',
              videDescription: 'des 3'),
        ],
      ),
    );
  }
}
