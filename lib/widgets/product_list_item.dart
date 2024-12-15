import 'package:flutter/material.dart';

class ProductListItem extends StatefulWidget {
  final Map<String, String> product;

  const ProductListItem({super.key, required this.product});

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.product['image']!,
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
      title: Text(widget.product['name']!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: [
          Row(
            children: [
              const Icon(Icons.refresh, size: 16, color: Colors.blue),
              Text(' Wastage: ${widget.product['wastage']}'),
            ],
          ),
          const SizedBox(width: 20),
          Row(
            children: [
              const Icon(Icons.scale, size: 16, color: Colors.green),
              Text(' Weight: ${widget.product['weight']}'),
            ],
          ),
        ],
      ),
      trailing: _isChecked
          ? IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Perform delete logic here
              },
            )
          : Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
    );
  }
}
