import 'package:flutter/material.dart';

import '../constants/themes.dart';
import '../widgets/header.dart';
import '../widgets/top_clip_listview.dart';
import '../widgets/trending_list_view.dart';

class ChannelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Header(title: "Top Streamer"),
              SizedBox(height: 10),
              TrendingListView(),
              SizedBox(height: 10),
              Header(title: "Most views"),
              SizedBox(height: 10),
              TopClipListVIew(),
            ],
          ),
        ),
      ),
    );
  }
}
