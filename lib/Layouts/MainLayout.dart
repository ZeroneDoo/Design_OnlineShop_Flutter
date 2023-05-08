import 'package:flutter/material.dart';
import 'package:pas_flutter/constans.dart';
import '../Pages/HomePage.dart';
import '../Components/BottomNavbarItems.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  late PageController _pageController;
  late BottomNavbarItems selectedIndex;

  List navbarItems = [
    BottomNavbarItems(icon: Icons.home_filled),
    BottomNavbarItems(icon: Icons.search_rounded),
    BottomNavbarItems(icon: Icons.favorite_rounded),
    BottomNavbarItems(icon: Icons.library_books_outlined),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    selectedIndex = navbarItems[0];
  }

  void pageChanged(int i) {
    _pageController.jumpToPage(i);
    if (navbarItems[i] != selectedIndex) {
      setState(() {
        selectedIndex = navbarItems[i];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCostum.bgColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: pageChanged,
        children: const <Widget>[
          HomePage(),
          Text('Search'),
          Text('Watchlist'),
          Text('List'),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          right: 12,
          left: 12,
          bottom: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          ),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
                navbarItems.length,
                (i) => GestureDetector(
                      onTap: () {
                        pageChanged(i);
                      },
                      child: // naviagation
                          Container(
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 180),
                                width: navbarItems[i] == selectedIndex ? 40 : 0,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: ColorsCostum.primaryColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Icon(
                                navbarItems[i].icon,
                                color: navbarItems[i] == selectedIndex
                                    ? ColorsCostum.primaryColor
                                    : Colors.white,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                      // end navigation,
                    )),
          ],
        ),
      ),
    );
  }
}