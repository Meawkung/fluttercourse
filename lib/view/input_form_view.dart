import 'package:flutter/material.dart';
import 'package:my_workshop/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';

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

  Product? product;
  bool isUpdate = false;

  @override
  void initState() {
    product = context.read<ProductProvider>().productSelected;
    if(product != null){
      isUpdate = true;
      nameController.text = product!.name??"";
      imageController.text = product!.imageUrl??"";
      descriptionController.text = product!.description??"";
      priceController.text = product!.price??"";

    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Add Product"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16),
        child:SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              maxLines: null,
              minLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Name",
                labelText: "Product Name",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              maxLines: null,
              controller: imageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Image",
                labelText: "Product Image",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              maxLines: null,
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                hintText: "Product Description",
                labelText: "Product Description",
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
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
                onPressed: (){
                  if (isUpdate == true) {
                    context
                        .read<ProductProvider>()
                        .updateProducts(
                      id: product!.id!,
                      name: nameController.text,
                      imageUrl: imageController.text,
                      description: descriptionController.text,
                      price: priceController.text,
                    )
                        .then((value) => Navigator.pop(context),
                    );
                  } else {
                    context
                        .read<ProductProvider>()
                        .addProducts(
                        name: nameController.text,
                        imageUrl: imageController.text,
                        description: descriptionController.text,
                        price: priceController.text,)
                        .then((value) => Navigator.pop(context));
                  }
                  },
                child: Text("Save"),
              ),
            )
          ],
        ),
      )
      )
    );
  }
}
