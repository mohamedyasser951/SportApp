import 'package:sport_app/DataLayer/Data/api_provider/player_api_provider.dart';
import 'package:sport_app/DataLayer/PlayerModels/player_model.dart';

class PlayerRepo {
  PlayerApiProvider playerApiProvider = PlayerApiProvider();

  Future<PlayerModel> fetchPlayerById({required String countryId}) =>
      playerApiProvider.fetchPlayerById(countryId: countryId);
}
