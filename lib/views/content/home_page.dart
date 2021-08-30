import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
import 'package:ifood_interface/views/content/components/bottom_navigation_component.dart';
import 'package:ifood_interface/views/content/components/tab_bar_component.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'components/header_address_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                HeaderAddressComponent("Rua Sergipe, 10"),
                TabBarComponent(tabController: tabController, onTap: (index) {})
              ],
            ),
          ),
          BottomNavigationComponent(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationItem(
                label: 'Início',
                activeIcon: AppIcons.homeActive,
                icon: AppIcons.home,
              ),
              BottomNavigationItem(
                label: 'Busca',
                activeIcon: AppIcons.searchActive,
                icon: AppIcons.search,
              ),
              BottomNavigationItem(
                label: 'Pedidos',
                activeIcon: AppIcons.ordersActive,
                icon: AppIcons.orders,
              ),
              BottomNavigationItem(
                label: 'Perfil',
                activeIcon: AppIcons.profileActive,
                icon: AppIcons.profile,
              ),
            ],
          )
        ],
      ),
    );
  }
}
