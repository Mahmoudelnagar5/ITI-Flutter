import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});
  final List<Map<String, dynamic>> products = [
    {
      'title': 'FinnNacian',
      'price': r'$248',
      'imageUrl': 'assets/ottoman.png',
      'description':
          'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
    },
    {
      'title': 'FinnNacian',
      'price': r'$248',
      'imageUrl': 'assets/chair.png',
      'description':
          'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
    },
    {
      'title': 'FinnNacian',
      'price': r'$248',
      'imageUrl': 'assets/ottoman.png',
      'description':
          'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
    },
    {
      'title': 'FinnNacian',
      'price': r'$248',
      'imageUrl': 'assets/chair.png',
      'description':
          'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      // shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          title: products[index]['title'],
          price: products[index]['price'],
          imageUrl: products[index]['imageUrl'],
          description: products[index]['description'],
        );
      },
    );
  }
}
