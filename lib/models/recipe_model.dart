class RecipeModel {
  String label;
  String image;
  String source;
  String url;

  RecipeModel(
      {required this.label,
      required this.source,
      required this.image,
      required this.url});
  factory RecipeModel.fromMap(Map<String, dynamic> parsedJson) {
    return RecipeModel(
        url: parsedJson["url"],
        label: parsedJson["label"],
        image: parsedJson["image"],
        source: parsedJson["source"]);
  }
}
