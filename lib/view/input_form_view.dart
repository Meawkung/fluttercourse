import 'package:flutter/material.dart';

class input_form_view extends StatefulWidget {
  const input_form_view({super.key});

  @override
  State<input_form_view> createState() => _input_form_viewState();
}

class _input_form_viewState extends State<input_form_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Input form"),
    );
  }
}
