import 'package:flutter/material.dart';
import 'package:high_cohesion_low_coupling/cart/cart_screen.dart';
import 'package:high_cohesion_low_coupling/main.dart';
import 'package:high_cohesion_low_coupling/services/cart_service.dart';

class CartButton extends StatefulWidget {
  const CartButton({super.key});

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    final cartService = CartContainer.of(context);

    return TextButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CartScreen(),
        ),
      ),
      child: CartCount(cartService),
    );
  }

  // ignore: non_constant_identifier_names
  Row CartCount(CartService cartService) {
    return Row(
      children: [
        const Icon(Icons.shopping_cart),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListenableBuilder(
            listenable: cartService,
            builder: (context, child) =>
                Text('Cart: ${cartService.products.length}'),
          ),
        )
      ],
    );
  }
}
