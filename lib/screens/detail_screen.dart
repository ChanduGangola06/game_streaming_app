import 'package:flutter/material.dart';
import 'package:game_streaming_app/data/top_games_data.dart';

import '../constants/themes.dart';
import '../widgets/details_header.dart';
import 'channel_screen.dart';
import 'clip_screen.dart';
import 'video.screen.dart';

class DetailScreen extends StatefulWidget {
  final TopGames game;
  const DetailScreen({Key? key, required this.game}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(this.widget.game.name),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DetailsHeader(
                      game: widget.game,
                    )
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Material(
                color: kPrimaryColor,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Tab(
                      text: "Channel",
                    ),
                    Tab(
                      text: "Videos",
                    ),
                    Tab(
                      text: "Clips",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ChannelScreen(),
                    VideoScreen(),
                    ClipScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameCategory extends StatelessWidget {
  const GameCategory({
    Key? key,
    required this.game,
  }) : super(key: key);

  final TopGames game;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(0xffFFC947),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type1),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 100,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(0xff77ACF1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type2),
          ),
        )
      ],
    );
  }
}
