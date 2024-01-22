import 'package:flutter/material.dart';
import 'package:test_gorouter/route.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("PageTwo"),
          ElevatedButton(
            child: const Text('Button'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
            ),
            onPressed: () async {
              final result =
                  await PageThreeRoute(AnnouncementType.fanClub).push(context);
              debugPrint("PageThreeRoute ${result}");
            },
          ),
        ],
      ),
    );
  }
}
