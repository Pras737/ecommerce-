import 'package:e_commerce/product/model/product_model.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final List<Product> cartItems;

  const CartPage({super.key, required this.cartItems,});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double total = widget.cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: widget.cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(widget.cartItems[index].image, width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(widget.cartItems[index].name),
                  subtitle: Text('Rs.${widget.cartItems[index].price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                     
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Total: Rs.${total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Checkout'),
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
