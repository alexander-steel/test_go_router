import 'package:flutter/material.dart';

import '../route.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key, required this.announcementType});
  final AnnouncementType announcementType;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("PageThree"),
          ElevatedButton(
            child: const Text('Button'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
            ),
            onPressed: () {
              PageFiveRoute("url").go(context);
            },
          ),
        ],
      ),
    );
  }
}
