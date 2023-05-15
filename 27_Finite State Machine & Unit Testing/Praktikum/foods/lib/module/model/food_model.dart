class Food {
  final int id;
  final String name;
  final String description;
  final String image;

  Food({required this.id, required this.name, required this.description, required this.image});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
    );
  }
}

