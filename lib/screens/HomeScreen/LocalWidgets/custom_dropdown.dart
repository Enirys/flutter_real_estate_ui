import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_real_estate_ui/config/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = 'Bandung, ID';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.mapMarkerAlt,
          color: Palette.kPrimaryColor,
          size: 24,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const FaIcon(FontAwesomeIcons.chevronDown),
            iconEnabledColor: Palette.kPrimaryColor,
            iconSize: 20,
            elevation: 0,
            alignment: Alignment.center,
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  color: Palette.kMainTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0),
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Bandung, ID',
              'New York City',
              'Honkong, China',
              'London, UK',
              'Paris, France'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
