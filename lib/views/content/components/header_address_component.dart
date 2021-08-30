import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';

class HeaderAddressComponent extends StatelessWidget {
  final String address;
  const HeaderAddressComponent(this.address, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _HeaderAddressComponentDelegate(address),
    );
  }
}

class _HeaderAddressComponentDelegate extends SliverPersistentHeaderDelegate {
  final String address;
  _HeaderAddressComponentDelegate(this.address);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Text(
                  address,
                  style: AppTypography.bodyTextBold(context)!
                      .copyWith(fontSize: 13),
                ),
                AppIcon(
                    AppIcons.arrowDown, AppColors.primaryColor, Size(20, 20))
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 38;

  @override
  double get minExtent => 38;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
