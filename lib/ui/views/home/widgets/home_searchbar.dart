import 'package:flutter/material.dart';

class ModernSearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final double height;
  final Color fillColor;
  final IconData icon;
  final Color iconColor;

  const ModernSearchBar({
    Key? key,
    this.hintText = 'Search...',
    this.onChanged,
    this.controller,
    this.height = 50.0,
    this.fillColor = const Color(0xFFF2F2F2),
    this.icon = Icons.search,
    this.iconColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 20.0,
              color: iconColor,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: fillColor,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
