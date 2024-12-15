import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  // Dropdown values
  String? selectedCategory;
  String? selectedKarat;

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController wastageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  final List<String> categories = ['Gold', 'Silver', 'Platinum'];
  final List<String> karats = ['18K', '22K', '24K'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Select Category Dropdown
              const Text('Select Category',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              DropdownButtonFormField<String>(
                value: selectedCategory,
                items: categories.map((String category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Product Name
              const Text('Product Name',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              TextField(
                controller: productNameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Description
              const Text('Description',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Wastage %
              const Text('Wastage %',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              TextField(
                controller: wastageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Weight (g)
              const Text('Weight (g)',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Image Upload Section
              const Center(
                child: Column(
                  children: [
                    Text('Image',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                              BorderSide(color: Colors.grey)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Icon(Icons.image_outlined,
                              size: 50, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Karat Dropdown
              const Text('Karat',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              DropdownButtonFormField<String>(
                value: selectedKarat,
                items: karats.map((String karat) {
                  return DropdownMenuItem(
                    value: karat,
                    child: Text(karat),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedKarat = value;
                  });
                },
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),

              // Add Product Button
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Handle "Add Product" Logic
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Add Product',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
