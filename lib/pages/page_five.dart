import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key, required this.initialLoadUrl});
  final String initialLoadUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("PageOne"),
    );
  }
}
