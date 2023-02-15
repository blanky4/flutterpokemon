import 'package:flutter/material.dart';
import 'package:flutterpokemon/dashboard/dashboard_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(textTheme:GoogleFonts.poppinsTextTheme()),
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),);
  }
}