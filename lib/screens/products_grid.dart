import 'package:flutter/material.dart';
import 'package:flutter_dojo/models/products.dart';
import 'package:flutter_dojo/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products;
  final Function changeTheme;
  final bool isDarkMode;

  ProductsGrid({this.products, this.changeTheme, this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.wb_sunny_outlined : Icons.nights_stay_outlined,
            ),
            onPressed: changeTheme,
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (ctx, index) => ProductItem(
          product: products[index],
        ),
      ),
    );
  }
}
