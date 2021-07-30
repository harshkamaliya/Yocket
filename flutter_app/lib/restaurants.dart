import 'dart:convert';

class Restaurants {
  final int id;
  final String title;
  final String image;
  final double rating;
  final String foodName;
  final int priceLevel;
  final int time;
  Restaurants({
    required this.id,
    required this.title,
    required this.image,
    required this.rating,
    required this.foodName,
    required this.priceLevel,
    required this.time,
  });

  Restaurants copyWith({
    int? id,
    String? title,
    String? image,
    double? rating,
    String? foodName,
    int? priceLevel,
    int? time,
  }) {
    return Restaurants(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      foodName: foodName ?? this.foodName,
      priceLevel: priceLevel ?? this.priceLevel,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'rating': rating,
      'foodName': foodName,
      'priceLevel': priceLevel,
      'time': time,
    };
  }

  factory Restaurants.fromMap(Map<String, dynamic> map) {
    return Restaurants(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      rating: map['rating'],
      foodName: map['foodName'],
      priceLevel: map['priceLevel'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurants.fromJson(String source) =>
      Restaurants.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Restaurants(id: $id, title: $title, image: $image, rating: $rating, foodName: $foodName, priceLevel: $priceLevel, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Restaurants &&
        other.id == id &&
        other.title == title &&
        other.image == image &&
        other.rating == rating &&
        other.foodName == foodName &&
        other.priceLevel == priceLevel &&
        other.time == time;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        image.hashCode ^
        rating.hashCode ^
        foodName.hashCode ^
        priceLevel.hashCode ^
        time.hashCode;
  }
}
