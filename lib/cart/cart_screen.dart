import 'package:flutter/material.dart';
import 'package:high_cohesion_low_coupling/main.dart';
import 'package:high_cohesion_low_coupling/models/product.dart';
import 'package:high_cohesion_low_coupling/services/cart_service.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartService = CartContainer.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: ListenableBuilder(
        listenable: cartService,
        builder: (context, child) {
          if (cartService.products.isEmpty) {
            return const Center(
              child: Text('Your Cart is Empty'),
            );
          } else {
            return ListView.separated(
                itemBuilder: (context, index) {
                  final product = cartService.products[index];

                  return RemoveProduct(product, cartService);
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: cartService.products.length);
          }
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ListTile RemoveProduct(Product product, CartService cartService) {
    return ListTile(
      title: Text(product.name),
      trailing: IconButton(
        onPressed: () => cartService.removeProduct(product),
        icon: const Icon(
          Icons.remove_circle,
          color: Colors.red,
        ),
      ),
    );
  }
}
