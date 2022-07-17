import 'package:flutter/material.dart';

import '../data/top_clip_data.dart';
import 'top_clip_card.dart';

class TopClipListVIew extends StatelessWidget {
  const TopClipListVIew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topClips.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              TopClipCard(data: topClips[index]),
              const SizedBox(width: 10),
            ],
          );
        },
      ),
    );
  }
}
