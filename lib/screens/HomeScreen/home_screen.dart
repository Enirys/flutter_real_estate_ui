import 'package:flutter/material.dart';
import 'package:flutter_real_estate_ui/config/palette.dart';
import 'local_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.kScaffoldColor,
        body: ListView(
          children: const [
            HomeHeader(),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
