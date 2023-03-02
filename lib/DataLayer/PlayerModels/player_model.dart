class PlayerModel {
  List<Data>? data;
  Pagination? pagination;
  String? timezone;

  PlayerModel({data, pagination, subscription, rateLimit, timezone});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }
}

class Data {
  int? id;
  int? sportId;
  int? countryId;
  int? nationalityId;
  dynamic cityId;
  int? positionId;
  int? detailedPositionId;
  int? typeId;
  String? commonName;
  String? firstname;
  String? lastname;
  String? name;
  String? displayName;
  String? imagePath;
  int? height;
  int? weight;
  String? dateOfBirth;
  String? gender;

  Data(
      {id,
      sportId,
      countryId,
      nationalityId,
      cityId,
      positionId,
      detailedPositionId,
      typeId,
      commonName,
      firstname,
      lastname,
      name,
      displayName,
      imagePath,
      height,
      weight,
      dateOfBirth,
      gender});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sportId = json['sport_id'];
    countryId = json['country_id'];
    nationalityId = json['nationality_id'];
    cityId = json['city_id'];
    positionId = json['position_id'];
    detailedPositionId = json['detailed_position_id'];
    typeId = json['type_id'];
    commonName = json['common_name'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    name = json['name'];
    displayName = json['display_name'];
    imagePath = json['image_path'];
    height = json['height'];
    weight = json['weight'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
  }
}

class Pagination {
  int? count;
  int? perPage;
  int? currentPage;
  dynamic nextPage;
  bool? hasMore;

  Pagination({count, perPage, currentPage, nextPage, hasMore});

  Pagination.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    hasMore = json['has_more'];
  }
}
