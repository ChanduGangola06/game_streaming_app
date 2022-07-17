import 'package:flutter/material.dart';

import '../data/top_games_data.dart';
import '../screens/detail_screen.dart';
import 'top_games_card.dart';

class TopGamesListView extends StatelessWidget {
  const TopGamesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topGames.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  game: topGames[index],
                ),
              ),
            ),
            child: TopGamessCard(thumbnail: topGames[index].thumbnail),
          );
        },
      ),
    );
  }
}
