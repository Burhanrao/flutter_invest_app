import 'package:flutter/material.dart';

class RoundedTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  const RoundedTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedTextFieldState createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  void initState() {
    super.initState();
    // Listen to changes in the text field
    widget.controller.addListener(_handleTextChanged);
  }

  @override
  void dispose() {
    // Clean up the listener when the widget is disposed
    widget.controller.removeListener(_handleTextChanged);
    super.dispose();
  }

  // Callback function to handle text changes
  void _handleTextChanged() {
    if (widget.onChanged != null) {
      // Call the onChanged callback if provided
      widget.onChanged!(widget.controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Adjust the vertical padding
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
           borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.green),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      validator: widget.validator,
      onChanged: widget.onChanged, // Forward onChanged callback to the TextFormField
    );
  }
}
