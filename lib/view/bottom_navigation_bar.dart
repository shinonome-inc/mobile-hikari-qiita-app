import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedLabelStyle: const TextStyle(color: Colors.lightGreen),
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/List.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: currentIndex == 0 ? Colors.lightGreen : Colors.grey,
          ),
          label: "Feed",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Tag.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: currentIndex == 1 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'Tag',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/User.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: currentIndex == 2 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/Settings.svg',
            width: 24,
            height: 24,
            // ignore: deprecated_member_use
            color: currentIndex == 3 ? Colors.lightGreen : Colors.grey,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
