import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TabBarComponent extends StatelessWidget {
  final TabController tabController;
  final Function(int) onTap;
  const TabBarComponent(
      {Key? key, required this.tabController, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _TabBarComponentDelegate(tabController, onTap),
    );
  }
}

class _TabBarComponentDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final Function(int) onTap;

  _TabBarComponentDelegate(this.tabController, this.onTap);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 16, right: (size.width / 2) - 16),
      child: TabBar(
        onTap: onTap,
        labelPadding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: AppColors.black54,
        labelStyle: AppTypography.bodyTextBold(context)!,
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
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
