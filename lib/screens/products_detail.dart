import 'package:flutter/material.dart';
import 'package:flutter_dojo/models/products.dart';

class ProductDetail extends StatelessWidget {
  static String routeName = 'detail_screen';

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context).settings.arguments as Product;

    return Scaffold(
      body: Center(
        child: Hero(
          tag: product.id,
          child: Image.network(
            product.imageUrl,
          ),
        ),
      ),
    );
  }
}
