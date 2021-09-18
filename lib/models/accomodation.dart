class Accomodation {
  final String type;
  final String name;
  final double rating;
  final String location;
  final String mainImageUrl;
  final String description;
  final int bed;
  final int bathtub;
  final bool hasAC;
  final bool hasWifi;
  final bool isFavourite;
  final double price;
  final List<String> interiorImagesUrl;

  Accomodation(
      this.type,
      this.name,
      this.rating,
      this.location,
      this.mainImageUrl,
      this.description,
      this.bed,
      this.bathtub,
      this.hasAC,
      this.hasWifi,
      this.isFavourite,
      this.price,
      this.interiorImagesUrl);
}
