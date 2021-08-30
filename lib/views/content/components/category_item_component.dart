import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_images.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
import 'package:ifood_interface/models/category_model.dart';

class CategoryItemComponent extends StatelessWidget {
  const CategoryItemComponent({Key? key, required this.categoryModel})
      : super(key: key);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          categoryModel.picture,
          height: 60,
        ),
        Container(
          padding: EdgeInsets.only(top: 6),
          child: Text(categoryModel.name, style: AppTypography.caption(context)),
        ),
      ],
    );
  }
}
