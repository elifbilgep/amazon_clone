import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../components/widgets/custom_text_field.dart';

class AddProductFormField extends StatefulWidget {
  const AddProductFormField({super.key});

  @override
  State<AddProductFormField> createState() => _AddProductFormFieldState();
}

class _AddProductFormFieldState extends State<AddProductFormField> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  @override
  void dispose() {
    _descriptionController.dispose();
    _productNameController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: context.paddingMediumHorizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomTextField(controller: _productNameController, hintText: "Product Name"),
          CustomTextField(
            controller: _productNameController,
            hintText: "Description",
            maxLines: 5,
          ),
          CustomTextField(controller: _productNameController, hintText: "Price "),
          CustomTextField(controller: _productNameController, hintText: "Quantity "),
        ],
      ),
    );
  }
}
