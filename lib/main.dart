import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/screens/tabs.dart';

// new color update
final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.black,
  background: Colors.black,
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.robotoSerifTextTheme().copyWith(
    titleSmall: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.normal,
    ),
    titleMedium: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.normal,
    ),
    titleLarge: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.bold,
    ),
    labelMedium: GoogleFonts.robotoSerif(
      fontWeight: FontWeight.w100,
    ),
  ),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabsScreen(),
    );
  }
}
