import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Models/product_model.dart'; // Make sure to import your Product model
import '/Product_Provider.dart'; // Import your provider

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("المنتجات المتوفرة في المخزن"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 171, 86),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1.0),
                borderSide: const BorderSide(width: 0.4),
              ),
              hintText: "ابحث عن منتج او استخدم الكاميرا",
              prefixIcon: IconButton(
                icon: const Icon(Icons.qr_code, size: 30),
                onPressed: () {
                  // Implement QR code scanning if needed
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Consumer<ProductProvider>(
              builder: (context, productProvider, child) {
                return ListView.separated(
                  itemCount: productProvider.Products.length,
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.grey),
                  itemBuilder: (context, index) {
                    final product = productProvider.Products[index];
                    return ListTile(
                      onTap: () => _showProductDetails(context, product),
                      title: Row(
                        children: [
                          Expanded(child: Text(product.name)),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[200],
                            child: Text("${product.quantity}"),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.green[200],
                            child: Text("${product.prix1}"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showProductDetails(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(product.name),
        content: Text("الكمية: ${product.quantity}\nالسعر: ${product.prix1}"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text("إغلاق"),
          ),
        ],
      ),
    );
  }
}
