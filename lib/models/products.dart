import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}
