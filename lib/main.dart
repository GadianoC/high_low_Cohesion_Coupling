// Dumb Down High Cohesion and Low Coupling Explaination
// High Cohesion: Basically Lego bricks forming a castle
// Low Cohesion: The castle is build with different sections independent to each other that won't affect the castle if changed.
// Why?
// Easier to fix
// Easier to change
// Easier to understand
import 'package:flutter/material.dart';
import 'package:high_cohesion_low_coupling/product_list/product_list_screen.dart';
import 'package:high_cohesion_low_coupling/services/cart_service.dart';
import 'package:high_cohesion_low_coupling/services/product_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductContainer(
      productService: ProductService(),
      child: CartContainer(
        cartService: CartService(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simple App',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true),
          home: const ProductListScreen(),
        ),
      ),
    );
  }
}

class ProductContainer extends InheritedWidget {
  final ProductService productService;

  const ProductContainer({
    super.key,
    required this.productService,
    required super.child,
  });

  @override
  bool updateShouldNotify(ProductContainer oldWidget) {
    return oldWidget.productService != productService;
  }

  static ProductService of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ProductContainer>()!
        .productService;
  }
}

class CartContainer extends InheritedWidget {
  final CartService cartService;

  const CartContainer({
    super.key,
    required this.cartService,
    required super.child,
  });

  @override
  bool updateShouldNotify(CartContainer oldWidget) {
    return oldWidget.cartService != cartService;
  }

  static CartService of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CartContainer>()!
        .cartService;
  }
}
