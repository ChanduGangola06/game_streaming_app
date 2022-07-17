import 'package:flutter/material.dart';
import 'package:game_streaming_app/data/trending_data.dart';

class StreamCard extends StatelessWidget {
  final TrendingStreamModel data;
  const StreamCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    this.data.thumbnail,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "Live",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black54,
                ),
                child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ),
                      Text(
                        " ${data.liveWatchingCount} watching",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
