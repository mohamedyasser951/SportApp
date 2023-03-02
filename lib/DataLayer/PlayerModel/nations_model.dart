class NationModel {
  final String nationName;
  final String imagePath;
  final String countryId;

  NationModel({required this.nationName, required this.imagePath, required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imagePath: "Assets/Images/argentina.png", countryId: "52"),
  NationModel(nationName: "Brazil", imagePath: "Assets/Images/brazil.png", countryId: "54"),
  NationModel(nationName: "Germany", imagePath: "Assets/Images/germany.png", countryId: "21"),
  NationModel(nationName: "England", imagePath: "Assets/Images/england.png", countryId: "14"),
  NationModel(nationName: "France", imagePath: "Assets/Images/france.png", countryId: "18"),
  NationModel(nationName: "Italy", imagePath: "Assets/Images/italy.png", countryId: "27"),
  NationModel(nationName: "Spain", imagePath: "Assets/Images/spain.png", countryId: "45")
];