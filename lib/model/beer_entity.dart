class BeerEntity {
  BeerEntity(this.name, this.brewery, this.city, this.description);

  factory BeerEntity.fromJson(Map<String, dynamic> json) => 
    BeerEntity(json['name'], json['brewery'], json['city'], json['description']);

  Map<String, dynamic> toJson() => {'name': name, 'brewery': brewery, 'city': city, 'description': description};

  final String name;
  final String brewery;
  final String city;
  final String description;
}
