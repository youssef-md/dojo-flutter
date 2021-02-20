import 'package:flutter/material.dart';
import 'package:flutter_dojo/models/products.dart';
import 'package:flutter_dojo/screens/products_detail.dart';
import 'package:flutter_dojo/screens/products_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Product> _products = [
    Product(
      id: 'p1',
      title: 'Nike AirMax 270',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://balishoes.vteximg.com.br/arquivos/ids/164320-600-600/tenis-nike-air-max-270-FEMININO-014-black-light-bone-hot-35.jpg?v=637197272805730000',
    ),
    Product(
      id: 'p2',
      title: 'Nike AirMax LTD3',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://i.zst.com.br/images/tenis-nike-masculino-casual-air-max-ltd-3-photo857874833-12-1e-15.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Nike Air Zoom Alphafly',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://images.lojanike.com.br/1024x1024/produto/258297_2502083_20200914141144.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Nike Revolution 5',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://static.netshoes.com.br/produtos/tenis-nike-revolution-5-masculino/06/HZM-1731-006/HZM-1731-006_zoom1.jpg?ts=1568717638&ims=544x',
    ),
    Product(
      id: 'p5',
      title: 'Nike Joyride',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://images.lojanike.com.br/1024x1024/produto/210523_1956413_20200218151454.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Nike Quest 2',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://authenticfeet.vteximg.com.br/arquivos/ids/228716-1000-1000/Tenis-Nike-Air-Max-27-React-Masculino-Multicolor.jpg?v=637044260135100000',
    ),
    Product(
      id: 'p7',
      title: 'Nike Quest 2',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://static.netshoes.com.br/produtos/tenis-nike-quest-2-masculino/26/HZM-1743-026/HZM-1743-026_zoom1.jpg?ts=1562156633',
    ),
    Product(
      id: 'p8',
      title: 'Nike Air FOrce 1',
      description:
          'Lorem Ipsum qualquer descrição aqui só para mostrar que é uma descrição.',
      imageUrl:
          'https://45582.cdn.simplo7.net/static/45582/sku/nike-tenis-nike-air-force-1-tm-5d9f250bade30-1591985551765.jpg',
    ),
  ];

  bool isDarkMode = false;

  void changeTheme() {
    setState(() {
      isDarkMode = isDarkMode ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: ProductsGrid(
        products: _products,
        changeTheme: changeTheme,
        isDarkMode: isDarkMode,
      ),
      routes: {
        ProductDetail.routeName: (ctx) => ProductDetail(),
      },
    );
  }
}
