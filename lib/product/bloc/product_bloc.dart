import 'package:e_commerce/product/model/product_model.dart';
import 'package:e_commerce/product/bloc/product_event.dart';
import 'package:e_commerce/product/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>((event, emit) {
      final products = [
        const Product(
          id: '1',
          name: 'Apple',
          price: 80,
          image: 'assets/images/products/apple.jpg',
          category: 'Fruits',
          description: 'Fresh, crisp apples straight from the orchard. Rich in fiber and vitamins, these apples are perfect for snacking or baking.'
        ),
        const Product(
          id: '2',
          name: 'Banana',
          price: 40,
          image: 'assets/images/products/banana.jpg',
          category: 'Fruits',
          description: 'Ripe, yellow bananas packed with potassium and natural sugars. Great for smoothies, baking, or as a quick energy boost.'
        ),
        const Product(
          id: '3',
          name: 'Orange',
          price: 60,
          image: 'assets/images/products/orange.jpg',
          category: 'Fruits',
          description: 'Juicy, tangy oranges bursting with vitamin C. Perfect for juicing or enjoying as a refreshing snack.'
        ),
        const Product(
          id: '4',
          name: 'Carrot',
          price: 30,
          image: 'assets/images/products/carrot.jpg',
          category: 'Vegetables',
          description: 'Crunchy, sweet carrots rich in beta-carotene. Ideal for salads, cooking, or as a healthy snack.'
        ),
        const Product(
          id: '5',
          name: 'Broccoli',
          price: 70,
          image: 'assets/images/products/broccoli.jpg',
          category: 'Vegetables',
          description: 'Nutrient-dense broccoli florets, packed with vitamins and minerals. Great for stir-fries, steaming, or roasting.'
        ),
        const Product(
          id: '6',
          name: 'Potato',
          price: 20,
          image: 'assets/images/products/potato.jpg',
          category: 'Vegetables',
          description: 'Versatile potatoes suitable for boiling, mashing, or roasting. A staple for countless recipes.'
        ),
        const Product(
          id: '7',
          name: 'Chips',
          price: 40,
          image: 'assets/images/products/chips.jpg',
          category: 'Snacks',
          description: 'Crispy, savory potato chips. Perfect for snacking or as a side with sandwiches.'
        ),
        const Product(
          id: '8',
          name: 'Chocolate',
          price: 150,
          image: 'assets/images/products/chocolate.jpg',
          category: 'Snacks',
          description: 'Rich, creamy chocolate bar. A delightful treat for chocolate lovers or for baking delicious desserts.'
        ),
        const Product(
          id: '9',
          name: 'Popcorn',
          price: 60,
          image: 'assets/images/products/popcorn.jpg',
          category: 'Snacks',
          description: 'Light, fluffy popcorn. A healthier snack option, perfect for movie nights or casual munching.'
        ),
      ];
      emit(ProductLoaded(products: products));
    });
  }
}