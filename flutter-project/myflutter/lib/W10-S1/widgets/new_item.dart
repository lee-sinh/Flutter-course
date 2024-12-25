import 'package:flutter/material.dart';
// import 'package:myflutter/W10-S1/data/dummy_items.dart';
import 'package:myflutter/W10-S1/models/grocery_category.dart';
import 'package:myflutter/W10-S1/models/grocery_item.dart';


class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() {
    return _NewItemState();
  }
}

class _NewItemState extends State<NewItem> {
  // We create a key to access and control the state of the Form.
  final _formKey = GlobalKey<FormState>();

  String _enteredName = '';
  int _enteredNum = 0;
  late GroceryCategory _selectedCategory;

  void _saveItem() {
    // 1 - Validate the form
    bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      final newItem = GroceryItem(
        name: _enteredName,
        quantity: _enteredNum,
        category: _selectedCategory, id: '',
      );
      
      // 2 - Save the form to get last entered values
      _formKey.currentState!.save();

      // TODO: Get the last entered quantity
      print("Name $_enteredName");
      print("Quantity $_enteredNum");
      print("Category $_selectedCategory");

      Navigator.of(context).pop(newItem);
      // Navigator.pop(context);
    }
  }

  String? validateTitle(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.trim().length <= 1 ||
        value.trim().length > 50) {
      return 'Must be between 1 and 50 characters.';
    }
    return null;
  }

  // TODO: validate quantity
  String? validateQuantity(String? value) {
    if (value == null ||
        value.isEmpty ||
      //  !value.isString() ||
        int.parse(value) <= 0) {
      return 'Must be a positive number.';
    }
    return null;
  }

  String? validateCategory(GroceryCategory? value) {
    if (value == null) {
      return 'Please select a category';
    }
    return null;
  }


  void _resetForm() {
    // TODO: reset the form
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: validateTitle,
                onSaved: (value) {
                  _enteredName = value!;
                },
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Quantity'),
                      ),
                      validator: validateQuantity,
                      onSaved: (value) {
                        _enteredNum = int.parse(value!);
                      },
                      initialValue: '1',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField<GroceryCategory>(
                      items: [
                        for (final category in GroceryCategory.values)
                          DropdownMenuItem<GroceryCategory>(
                            value: category,
                            child: Row(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  color: category.color,
                                ),
                                const SizedBox(width: 6),
                                Text(category.label),
                              ],
                            ),
                          ),
                      ],
                      validator: validateCategory,
                      onChanged: (value) {
                        _selectedCategory = value!;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _resetForm,
                    child: const Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: _saveItem,
                    child: const Text('Add Item'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
