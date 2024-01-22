import 'package:flutter/material.dart';
import 'package:test_gorouter/route.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("PageOne"),
          ElevatedButton(
            child: const Text('Button'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
            ),
            onPressed: () {
              PageTwoRoute().go(context);
            },
          ),
        ],
      ),
    );
  }
}
