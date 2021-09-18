import 'package:flutter/material.dart';
import 'package:flutter_real_estate_ui/config/palette.dart';
import 'package:flutter_real_estate_ui/screens/HomeScreen/local_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomDropDown(),
          FaIcon(
            FontAwesomeIcons.solidBell,
            color: Palette.kLightGreyColor,
          ),
        ],
      ),
    );
  }
}
