import 'package:flutter/material.dart';

class Pagefour extends StatelessWidget {
  const Pagefour({super.key, required this.initialLoadUrl});
  final String initialLoadUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("initialLoadUrl :::: ${initialLoadUrl}"),
    );
  }
}
