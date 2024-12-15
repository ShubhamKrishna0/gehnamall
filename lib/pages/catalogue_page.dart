import 'package:flutter/material.dart';
import '../widgets/product_list_item.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'image': 'assets/images/ring.jpeg',
        'name': 'Product 1',
        'wastage': '0.0%',
        'weight': '0.0g'
      },
      {
        'image': 'assets/images/ring.jpeg',
        'name': 'Product 2',
        'wastage': '0.0%',
        'weight': '0.0g'
      },
      {
        'image': 'assets/images/ring.jpeg',
        'name': '11',
        'wastage': '6.0%',
        'weight': '1.0g'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sort and Category Buttons
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.sort),
                  label: Text('Sort By'),
                ),
                ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.category),
                  label: Text('Category'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Product List
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductListItem(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
