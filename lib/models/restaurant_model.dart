import 'dart:convert';

import 'package:flutter/foundation.dart';

class RestaurantModel {
  final String name;
  final String category;
  final String deliveryTaxe;
  final String distance;
  final double rate;
  final List<int> time;
  final bool favorite;
  final String imageUrl;

  RestaurantModel({
    required this.name,
    required this.category,
    required this.deliveryTaxe,
    required this.distance,
    required this.rate,
    required this.time,
    required this.favorite,
    required this.imageUrl,
  });

  RestaurantModel copyWith({
    String? name,
    String? category,
    String? deliveryTaxe,
    String? distance,
    double? rate,
    List<int>? time,
    bool? favorite,
    String? imageUrl,
  }) {
    return RestaurantModel(
      name: name ?? this.name,
      category: category ?? this.category,
      deliveryTaxe: deliveryTaxe ?? this.deliveryTaxe,
      distance: distance ?? this.distance,
      rate: rate ?? this.rate,
      time: time ?? this.time,
      favorite: favorite ?? this.favorite,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'category': category,
      'deliveryTaxe': deliveryTaxe,
      'distance': distance,
      'rate': rate,
      'time': time,
      'favorite': favorite,
      'imageUrl': imageUrl,
    };
  }

  factory RestaurantModel.fromMap(Map<String, dynamic> map) {
    return RestaurantModel(
      name: map['name'],
      category: map['category'],
      deliveryTaxe: map['deliveryTaxe'],
      distance: map['distance'],
      rate: map['rate'],
      time: List<int>.from(map['time']),
      favorite: map['favorite'],
      imageUrl: map['imageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RestaurantModel.fromJson(String source) =>
      RestaurantModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RestaurantModel(name: $name, category: $category, deliveryTaxe: $deliveryTaxe, distance: $distance, rate: $rate, time: $time, favorite: $favorite, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RestaurantModel &&
      other.name == name &&
      other.category == category &&
      other.deliveryTaxe == deliveryTaxe &&
      other.distance == distance &&
      other.rate == rate &&
      listEquals(other.time, time) &&
      other.favorite == favorite &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      category.hashCode ^
      deliveryTaxe.hashCode ^
      distance.hashCode ^
      rate.hashCode ^
      time.hashCode ^
      favorite.hashCode ^
      imageUrl.hashCode;
  }
}
