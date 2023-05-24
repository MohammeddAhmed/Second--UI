import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 14, right: 14, bottom: 16, top: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              selectedLabelStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
              ),
              onTap: (currentIndex) {
                setState(() => _currentIndex = currentIndex);
              },
              currentIndex: _currentIndex,
              backgroundColor: Colors.grey.shade200,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: const Color(0xff1D267D),
              iconSize: 30,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                    ),
                    label: '.'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  label: '.',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined),
                  label: '.',
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Settings',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 4,
        ),
        body: Center(
          child: Text(
            'Welcome There!',
            style: GoogleFonts.roboto(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
        ),
      ),
    );
  }
}
