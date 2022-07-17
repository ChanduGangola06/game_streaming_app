import 'package:flutter/material.dart';
import 'package:game_streaming_app/constants/themes.dart';
import 'package:game_streaming_app/widgets/header.dart';

import '../widgets/category_list_view.dart';
import '../widgets/top_clip_listview.dart';
import '../widgets/top_games_listview.dart';
import '../widgets/trending_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _categories = [
    "Shooter",
    "Arcade",
    "Strategy",
    "Racing",
    "Action",
    "Simulation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            
            children: [
              const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://placeimg.com/640/480/people"),
              ),
              const SizedBox(width: 10),
              Text(
                'Hi, John',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Header(title: "Categories"),
              const SizedBox(height: 10),
              CategoryListView(categories: _categories),
              const Header(title: "Trending Streams"),
              const SizedBox(height: 10),
              const TrendingListView(),
              const Header(title: "Top Games"),
              const SizedBox(height: 10),
              const TopGamesListView(),
              const SizedBox(height: 20),
              const Header(title: "Top Clips"),
              const SizedBox(height: 10),
              const TopClipListVIew(),
            ],
          ),
        ),
      ),
    );
  }
}
