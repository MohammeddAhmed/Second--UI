import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(26)),
                    child: IconButton(
                      //onPressed: () => Navigator.pushReplacementNamed(context, '/home_page'),
                      onPressed: (){},
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 32,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(26)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 1),
                        child: Icon(
                          Icons.list_outlined,
                          size: 32,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 165,top: 30),
              child: Text(
                "74 results for\n'Photographer'",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: 370,
              height: 300,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xff1D267D),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0.2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photographer',
                          style: GoogleFonts.roboto(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(18)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.save_as_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: 90,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        ' S120/h',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Subject and studio photography\nof google for an online store. Photo\nprocessing.',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white38,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white30,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Text(
                            'photography',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white30,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Text(
                            'photography',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14, left: 14, top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Dislike',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Like',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
