import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sport_app/DataLayer/PlayerModels/player_model.dart';


class PlayerApiProvider {
  String apiKey =
      "SDrVXTA4RJLL8gTZHy1lwW8aKZdV3XAhDiKdSkQR5yb2T2EKHXoMz7GPauqy";
  String mainUrl = "https://api.sportmonks.com/v3/football/players";

  Future<PlayerModel> fetchPlayerById({required String countryId}) async {
    var response = await http
        .get(Uri.parse("$mainUrl/countries/$countryId?api_token=$apiKey"));
    return parseResponse(response);
  }

  Future<PlayerModel> fetchPlayerByName({required String name}) async {
    var response =
        await http.get(Uri.parse("mainUrl/search/?api_token=$apiKey"));

    return parseResponse(response);
  }

  PlayerModel parseResponse(http.Response response) {
    if (response.statusCode == 200) {
      var responsebody = jsonDecode(response.body);
      return PlayerModel.fromJson(responsebody);
    } else {
      throw "'failed to load players'";
    }
  }
}
