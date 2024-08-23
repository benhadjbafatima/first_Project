import 'package:flutter/material.dart';
import '/widgets.dart/Custom_Date.dart';
import '/widgets.dart/Image_Upload.dart';
import '/widgets.dart/Text_Field_add8product.dart';
import 'dart:io';
import '/Models/product_model.dart';
import '/Product_Provider.dart';
import 'package:provider/provider.dart';
import '/widgets.dart/Build_price.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _prix1Controller = TextEditingController();
  final TextEditingController _prix2Controller = TextEditingController();
  final TextEditingController _prix3Controller = TextEditingController();
  final TextEditingController _prix4Controller = TextEditingController();
  final TextEditingController _prixAchatController = TextEditingController();
  final TextEditingController _cartonController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _notifyController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  DateTime? _selectedDate;
  File? _selectedImage;
  String _selectedCategory = "Category1"; // Default category

  // Function to save the product
  void _saveProduct(BuildContext context) {
    final int number = int.tryParse(_numberController.text) ?? 0;
    final String name = _nameController.text;
    final int prix1 = int.tryParse(_prix1Controller.text) ?? 0;
    final int prix2 = int.tryParse(_prix2Controller.text) ?? 0;
    final int prix3 = int.tryParse(_prix3Controller.text) ?? 0;
    final int prix4 = int.tryParse(_prix4Controller.text) ?? 0;
    final int prixAchat = int.tryParse(_prixAchatController.text) ?? 0;
    final int carton = int.tryParse(_cartonController.text) ?? 0;
    final int quantity = int.tryParse(_quantityController.text) ?? 0;
    final int notify = int.tryParse(_notifyController.text) ?? 0;
    final String description = _descriptionController.text;
    final DateTime date = _selectedDate ?? DateTime.now();
    final File image = _selectedImage ??
        File("path_to_default_image"); // Handle if no image is selected

    // Create a new Product object
    final Product product = Product(
      number: number,
      name: name,
      prix1: prix1,
      prix2: prix2,
      prix3: prix3,
      prix4: prix4,
      prixAchat: prixAchat,
      carton: carton,
      quantity: quantity,
      category: _selectedCategory,
      notify: notify,
      description: description,
      date: date,
      image: image,
    );

    // Use the provider to add the product, if using Provider
    Provider.of<ProductProvider>(context, listen: false).AddProduct(product);

    // Optionally, show a success message or navigate back
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تمت اضافة المنتج بنجاح')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اضافة منتج جديد'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 171, 86),
        actions: [
          IconButton(
            onPressed: () {
              _saveProduct(context);
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: 'رقم المنتج',
              controller: _numberController,
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: 'اسم المنتج',
              controller: _nameController,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildPrice(label: 'سعر البيع 1', controller: _prix1Controller),
                buildPrice(label: 'سعر البيع 2', controller: _prix2Controller),
                buildPrice(label: 'سعر البيع 3', controller: _prix3Controller),
                buildPrice(label: 'سعر البيع 4', controller: _prix4Controller),
              ],
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: 'سعر الشراء',
              controller: _prixAchatController,
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: "الكرطونة",
              controller: _cartonController,
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: "الكمية",
              controller: _quantityController,
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  const Text("التصنيف", style: TextStyle(fontSize: 20)),
                  const Spacer(),
                  DropdownButton<String>(
                    value: _selectedCategory,
                    items: <String>['Category1', 'Category2', 'Category3']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategory = newValue!;
                      });
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      // Add new category logic
                    },
                    icon: const Icon(Icons.add_circle_rounded,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: "حد الطلب(انذار عندما يصل المنتج الى الكمية)",
              controller: _notifyController,
            ),
            const SizedBox(height: 10),
            CustoM_TextField8AddProduct(
              label: "الوصف",
              controller: _descriptionController,
            ),
            const SizedBox(height: 10),
            const Text("تاريخ الانتهاء", style: TextStyle(fontSize: 25)),
            CustomDate(),
            ImageUpload(
              label1: "تغيير",
              label2: "الصورة",
            ),
          ],
        ),
      ),
    );
  }
}
