import 'package:flutter/material.dart';
import 'package:sport_app/DataLayer/PlayerModels/nations_model.dart';

@immutable
abstract class PlayersEvents {}

class FetchPlayerByIdEvent extends PlayersEvents {
  final NationModel nationModel;
  FetchPlayerByIdEvent({required this.nationModel});
}
