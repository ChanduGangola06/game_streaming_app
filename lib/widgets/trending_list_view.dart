import 'package:flutter/material.dart';

import '../data/trending_data.dart';
import 'stream_card.dart';

class TrendingListView extends StatelessWidget {
  const TrendingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: trendingStreams.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                StreamCard(data: trendingStreams[index]),
                const SizedBox(width: 10),
              ],
            );
          }),
    );
  }
}
