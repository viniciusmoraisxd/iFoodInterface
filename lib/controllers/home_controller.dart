import 'package:ifood_interface/core/theme/app_images.dart';
import 'package:ifood_interface/models/category_model.dart';

class HomeController {
  List<CategoryModel> getCategories() {
    return [
      CategoryModel(name: 'Açai', picture: AppImages.acai),
      CategoryModel(name: 'Brasileira', picture: AppImages.brasileira),
      CategoryModel(name: 'Café', picture: AppImages.cafe),
      CategoryModel(name: 'Doces', picture: AppImages.doces),
      CategoryModel(name: 'Japonêsa', picture: AppImages.japones),
      CategoryModel(name: 'Lanches', picture: AppImages.lanches),
      CategoryModel(name: 'Marmita', picture: AppImages.marmita),
      CategoryModel(name: 'Mercado', picture: AppImages.mercado),
      CategoryModel(name: 'Padaria', picture: AppImages.padaria),
      CategoryModel(name: 'Pizza', picture: AppImages.pizza),
      CategoryModel(name: 'Promoções', picture: AppImages.promocoes),
      CategoryModel(name: 'Saudável', picture: AppImages.saudavel),
      CategoryModel(name: 'Vegetariano', picture: AppImages.vegetariano),
      CategoryModel(name: 'Vale Refeição', picture: AppImages.vr),
    ];
  }
}
