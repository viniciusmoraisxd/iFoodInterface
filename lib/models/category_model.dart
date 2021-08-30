import 'dart:convert';

class CategoryModel {
  final String name;
  final String picture;

  CategoryModel({
    required this.name,
    required this.picture,
  });

  CategoryModel copyWith({
    String? name,
    String? picture,
  }) {
    return CategoryModel(
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'picture': picture,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'],
      picture: map['picture'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryModel(name: $name, picture: $picture)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.name == name &&
        other.picture == picture;
  }

  @override
  int get hashCode => name.hashCode ^ picture.hashCode;
}
