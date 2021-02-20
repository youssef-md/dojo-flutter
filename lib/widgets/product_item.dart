import 'package:flutter/material.dart';
import 'package:flutter_dojo/models/products.dart';
import 'package:flutter_dojo/screens/products_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          ProductDetail.routeName,
          arguments: product,
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Hero(
            tag: product.id,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Colors.black54, Colors.transparent],
              ),
            ),
            child: Text(
              product.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
