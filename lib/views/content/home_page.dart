import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderAddressComponent("Rua Sergipe, 10"),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 200),
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              labelColor: AppColors.black,
              unselectedLabelColor: AppColors.black54,
              labelStyle: AppTypography.bodyTextBold(context),
              controller: tabController,
              indicator: MaterialIndicator(
                  color: AppColors.primaryColor,
                  height: 2,
                  bottomLeftRadius: 5,
                  bottomRightRadius: 5),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Restarauntes'),
                  ),
                ),
                Tab(
                  child: Text('Mercados'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
