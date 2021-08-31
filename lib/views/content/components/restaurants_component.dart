import 'package:flutter/material.dart';
import 'package:ifood_interface/core/theme/app_colors.dart';
import 'package:ifood_interface/core/theme/app_icons.dart';
import 'package:ifood_interface/core/theme/app_typography.dart';
import 'package:ifood_interface/models/restaurant_model.dart';

class RestaurantComponent extends StatelessWidget {
  final RestaurantModel restaurantModel;
  const RestaurantComponent({Key? key, required this.restaurantModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(restaurantModel.imageUrl),
                radius: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurantModel.name,
                    style: AppTypography.subtitle2(context)
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      AppIcon(
                        AppIcons.star,
                        Colors.amber,
                        Size(9, 9),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        restaurantModel.rate.toString(),
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                      _Dot(),
                      Text(
                        restaurantModel.category,
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                      _Dot(),
                      Text(
                        restaurantModel.distance,
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        restaurantModel.time[0].toString(),
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                      Text(
                        ' - ',
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                      Text(
                        restaurantModel.time[1].toString(),
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                      _Dot(),
                      Text(
                        restaurantModel.deliveryTaxe,
                        style: AppTypography.caption(context)
                            ?.copyWith(color: AppColors.grey700),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          AppIcon(AppIcons.favLine, AppColors.grey700, Size(18, 18))
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.grey700),
      height: 3,
      width: 3,
    );
  }
}

List<RestaurantModel> restaurantsList = [
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sushi-bar-restaurant-logo-design-template-a917bf7521aa74b08179cad073df41c1_screen.jpg?ts=1597302425",
      rate: 4.6,
      time: [60, 80]),
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://i.pinimg.com/736x/58/ba/8b/58ba8bc8d560d03e5de064a222a52564.jpg",
      rate: 4.6,
      time: [60, 80]),
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://image.freepik.com/free-vector/vintage-restaurant-logo_23-2148459010.jpg",
      rate: 4.6,
      time: [60, 80]),
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://st2.depositphotos.com/7109552/11377/v/600/depositphotos_113775112-stock-illustration-vintage-restaurant-and-cafe-label.jpg",
      rate: 4.6,
      time: [60, 80]),
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://freedesignfile.com/upload/2016/10/Restaurant-logos-creative-design-vector-07.jpg",
      rate: 4.6,
      time: [60, 80]),
  RestaurantModel(
      category: 'Japonesa',
      deliveryTaxe: "R\$ 5,99",
      distance: "4,1 km",
      favorite: false,
      name: "Restaurante Japones",
      imageUrl:
          "https://i.pinimg.com/originals/13/ea/97/13ea973cdc14d45e27d8285f2020c6bf.png",
      rate: 4.6,
      time: [60, 80]),
];
