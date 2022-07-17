import 'package:flutter/material.dart';

import '../data/top_games_data.dart';
import '../screens/detail_screen.dart';
import 'top_games_card.dart';

class DetailsHeader extends StatelessWidget {
  final TopGames game;

  const DetailsHeader({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopGamessCard(
                thumbnail: this.game.thumbnail,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GameCategory(game: this.game),
                    const SizedBox(height: 10),
                    Text(this.game.viewers +
                        " Viewers • " +
                        this.game.followers +
                        " Followers"),
                    const SizedBox(height: 10),
                    const Text("A 5v5 character-based tactical shooter"),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Follow"),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
