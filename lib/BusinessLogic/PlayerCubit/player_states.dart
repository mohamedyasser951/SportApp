import 'package:flutter/material.dart';
import 'package:sport_app/DataLayer/PlayerModels/player_model.dart';

@immutable
abstract class PlayersStates {}

class PlayesrNotInitializeState extends PlayersStates {}

class PlayersLoadingState extends PlayersStates {}

class PlayersSuccessState extends PlayersStates {
  final PlayerModel playerModel;
  PlayersSuccessState({required this.playerModel});
}

class PlayersErrorState extends PlayersStates {}

class PlayersEmptyState extends PlayersStates {}
