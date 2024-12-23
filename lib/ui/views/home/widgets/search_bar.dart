import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const HomeSearchBar({
    Key? key,
    this.hintText = 'Search for a salon or service',
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      child: Container(
        height: 50.0, // Biraz daha yüksek bir boyut modern görünüyor
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.blueGrey,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass, // Daha modern bir ikon
              size: 20.0,
              color: Colors.blueGrey,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            hintText:
                'Find your perfect salon or service', // Daha davetkar bir metin
            hintStyle: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic, // Hafif eğik yazı
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
