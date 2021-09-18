import 'package:flutter/material.dart';
import 'package:flutter_real_estate_ui/config/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Palette.kLightGreyColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15.0,
              ),
            ),
            decoration: const InputDecoration(
              fillColor: Palette.kLightGreyColor,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Find rent house near you ...',
              icon: FaIcon(
                FontAwesomeIcons.search,
                color: Palette.kDarkGreyColor,
                size: 21,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
        ),
      ),
    );
  }
}
