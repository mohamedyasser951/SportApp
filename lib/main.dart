import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/DataLayer/Data/repository/PlayerRepo/player_repo.dart';
import 'package:sport_app/PresentaionLayer/Player/players_screen.dart';
import 'package:sport_app/bloc_observer.dart';

void main() {
  PlayerRepo playerRepo = PlayerRepo();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    playerRepo: playerRepo,
  ));
}

class MyApp extends StatelessWidget {
  final PlayerRepo playerRepo;
  const MyApp({super.key, required this.playerRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: Colors.white,
        ),
        home: PlayerScreen(
          playerRepo: playerRepo,
        ));
  }
}
