import 'package:flutter/material.dart';
import 'package:ifood_interface/controllers/home_controller.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
import 'package:ifood_interface/models/category_model.dart';
import 'package:ifood_interface/views/content/components/bottom_navigation_component.dart';
import 'package:ifood_interface/views/content/components/category_item_component.dart';
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
  final HomeController controller = HomeController();

  List<CategoryModel> listCategories = [];
  @override
  void initState() {
    super.initState();
    listCategories = controller.getCategories();
    tabController = TabController(length: 2, vsync: this);
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxScroll) {
              return [
                HeaderAddressComponent("Rua Sergipe, 10"),
                TabBarComponent(tabController: tabController, onTap: (index) {})
              ];
            },
            body: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () {
                      return Future.delayed(Duration(seconds: 2));
                    },
                    child: CustomScrollView(
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 86,
                            child: ListView.builder(
                              itemCount: listCategories.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(
                                      left: index == 0 ? 16 : 0,
                                      right: index == listCategories.length
                                          ? 16
                                          : 10),
                                  child: CategoryItemComponent(
                                    categoryModel: listCategories[index],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
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
            )),
      ),
    );
  }
}
