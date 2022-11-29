import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController textEditingController;
  String hintText;
  CustomTextField(
      {Key? key, required this.textEditingController, required this.hintText})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width - 30,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(28)),
      child: TextField(
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
        cursorColor: Colors.black,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
