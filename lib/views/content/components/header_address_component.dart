import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';

class HeaderAddressComponent extends StatelessWidget {
  final String address;
  const HeaderAddressComponent(this.address, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Text(
                  address,
                  style: AppTypography.bodyTextBold(context),
                ),
                AppIcon(AppIcons.arrowDown, AppColors.primaryColor,
                    Size(20, 20))
              ],
            ),
          )
        ],
      ),
    );
  }
}
