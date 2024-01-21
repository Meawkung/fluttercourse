import 'package:flutter/material.dart';

class input_form_view extends StatefulWidget {
  const input_form_view({super.key});

  @override
  State<input_form_view> createState() => _input_form_viewState();
}

class _input_form_viewState extends State<input_form_view> {
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Add Product"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Name",
                labelText: "Product Name",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: imageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Image",
                labelText: "Product Image",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Description",
                labelText: "Product Description",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: priceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Price",
                labelText: "Product Price",
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Save"),
              ),
            )
          ],
        ),
      )

    );
  }
}
