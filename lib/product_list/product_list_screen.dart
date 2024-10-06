import 'package:flutter/material.dart';
import 'package:high_cohesion_low_coupling/main.dart';
import 'package:high_cohesion_low_coupling/product_list/cart_button.dart';
import 'package:high_cohesion_low_coupling/services/cart_service.dart';
import 'package:high_cohesion_low_coupling/services/product_service.dart';
import 'package:intl/intl.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productService = ProductContainer.of(context);
    final cartService = CartContainer.of(context);

    final formatter = NumberFormat.currency(symbol: 'PHP ', decimalDigits: 2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: const [
          CartButton(),
        ],
      ),
      body: ListenableBuilder(
        listenable: cartService,
        builder: (context, child) =>
            ListOfItems(productService, cartService, formatter),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ListView ListOfItems(ProductService productService, CartService cartService,
      NumberFormat formatter) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final product = productService.products[index];
        final isAlreadyInCart = cartService.products.contains(product);

        return ListTile(
          title: Text(product.name),
          subtitle: Text(
            product.description,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.black38,
                ),
          ),
          leading: Icon(
            Icons.shopping_cart,
            color: isAlreadyInCart ? Colors.green : Colors.transparent,
          ),
          trailing: Text(
            formatter.format(product.price),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black54,
                ),
          ),
          onTap: isAlreadyInCart ? null : () => cartService.addProduct(product),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: productService.products.length,
    );
  }
}
