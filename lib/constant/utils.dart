 import 'package:himish/models/car_details.dart';
import 'package:himish/models/category_model.dart';

import '../generated/assets.dart';

List<CategoryModel> categoriesList=[
  CategoryModel(icon:Assets.categoriesRealState , title: "Real Estate"),
  CategoryModel(icon:Assets.categoriesFashion , title: "Fashion"),
  CategoryModel(icon:Assets.categoriesBaby , title: "Babysitters"),
  CategoryModel(icon:Assets.categoriesVehicle , title: "Vehicles"),
  CategoryModel(icon:Assets.categoriesEvents , title: "Events"),
  CategoryModel(icon:Assets.categoriesJobs , title: "Jobs"),
];
List<CarDetailsModel> carDetailsList=[
  CarDetailsModel(icon: Assets.categoriesVehicle, title: "Nissan", subTitle: "Make"),
  CarDetailsModel(icon: Assets.categoriesCond, title: "10+", subTitle: "Condition"),
  CarDetailsModel(icon: Assets.categoriesLpg, title: "28 city", subTitle: "MPG"),
  CarDetailsModel(icon: Assets.categoriesCarRatting, title: "4.92", subTitle: "Ratings"),
  CarDetailsModel(icon: Assets.categoriesEvents, title: "2012", subTitle: "Year"),
  CarDetailsModel(icon: Assets.iconsCarColor, title: "Gray", subTitle: "Color"),
  CarDetailsModel(icon: Assets.iconsGauge, title: "7,500", subTitle: "MPG"),
  CarDetailsModel(icon: Assets.categoriesVehicle, title: "Mint", subTitle: "Color"),
];
 List<CategoryModel> allCategoriesList=[
   CategoryModel(icon:Assets.categoriesRealState , title: "Real Estate"),
   CategoryModel(icon:Assets.categoriesFashion , title: "Fashion"),
   CategoryModel(icon:Assets.categoriesVehicle , title: "Vehicles"),
   CategoryModel(icon:Assets.categoriesEvents , title: "Events"),
   CategoryModel(icon:Assets.categoriesJobs , title: "Jobs"),
   CategoryModel(icon:Assets.categoriesServices , title: "Services"),
   CategoryModel(icon:Assets.categoriesLost , title: "Lost & Found"),
   CategoryModel(icon:Assets.categoriesGeneral , title: "General Items"),
 ];