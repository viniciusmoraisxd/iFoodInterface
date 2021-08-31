import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';

class FiltersComponent extends StatelessWidget {
  const FiltersComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _FiltersComponentDelegate(),
    );
  }
}

class _FiltersComponentDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // height: 340,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          FilterItemComponent(
            label: 'Ordernar',
            icon: AppIcons.arrowDown,
          ),
          FilterItemComponent(
            label: 'Para retirar',
          ),
          FilterItemComponent(
            label: 'Entrega grátis',
          ),
          FilterItemComponent(
            label: 'Vale refeição',
          ),
          FilterItemComponent(
            label: 'Distância',
          ),
          FilterItemComponent(
            label: 'Entrega Parceira',
          ),
          FilterItemComponent(
            label: 'Super Restaurante',
          ),
          FilterItemComponent(
            label: 'Filtros',
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 54;

  @override
  double get minExtent => 54;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class FilterItemComponent extends StatelessWidget {
  final String label;
  final String icon;

  const FilterItemComponent({Key? key, required this.label, this.icon = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, top: 10, right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.grey200),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text(
                label,
                // style: TextStyle(color: AppColors.grey700),
                style: AppTypography.bodyText(context)
                    ?.copyWith(color: AppColors.grey700),
              ),
              if (icon != "")
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: AppIcon(
                    icon,
                    AppColors.black,
                    Size(14, 14),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
