import 'package:e_commerce/product/model/product_model.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  ProductLoaded({required this.products});
}

class ProductError extends ProductState{}