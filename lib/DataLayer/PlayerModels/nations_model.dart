class NationModel {
  final String nationName;
  final String imagePath;
  final String countryId;

  NationModel({required this.nationName, required this.imagePath, required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imagePath: "Assets/Images/argentina.png", countryId: "44"),
  NationModel(nationName: "Brazil", imagePath: "Assets/Images/brazil.png", countryId: "5"),
  NationModel(nationName: "Germany", imagePath: "Assets/Images/germany.png", countryId: "11"),
  NationModel(nationName: "England", imagePath: "Assets/Images/england.png", countryId: "462"),
  NationModel(nationName: "France", imagePath: "Assets/Images/france.png", countryId: "17"),
  NationModel(nationName: "Italy", imagePath: "Assets/Images/italy.png", countryId: "27"),
  NationModel(nationName: "Spain", imagePath: "Assets/Images/spain.png", countryId: "32")
];