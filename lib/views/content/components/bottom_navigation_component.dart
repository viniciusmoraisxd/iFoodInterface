import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';

class BottomNavigationComponent extends StatelessWidget {
  final List<BottomNavigationItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationComponent(
      {Key? key,
      required this.items,
      this.currentIndex = 0,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          Container(height: 1, color: AppColors.grey200,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items
                  .map(
                    (e) => e.copyWith(
                      label: e.label,
                      isActive: items.indexOf(e) == currentIndex,
                      icon: e.icon,
                      activeIcon: e.activeIcon,
                      onTap: () => onTap(items.indexOf(e)),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String label;
  final String activeIcon;
  final String icon;
  final bool isActive;
  final void Function()? onTap;

  const BottomNavigationItem({
    Key? key,
    required this.label,
    required this.activeIcon,
    required this.icon,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  BottomNavigationItem copyWith(
      {required String label,
      required String activeIcon,
      required String icon,
      required bool isActive,
      required void Function()? onTap}) {
    return BottomNavigationItem(
      label: label,
      icon: icon,
      activeIcon: activeIcon,
      isActive: isActive,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          children: [
            AppIcon(
                isActive ? activeIcon : icon, AppColors.black, Size(20, 20)),
            Text(
              label,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
