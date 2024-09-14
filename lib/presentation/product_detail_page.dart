import 'package:e_commerce/product/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, fit: BoxFit.cover, height: 300, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('\Rs.${product.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  Text('Category: ${product.category}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 24),
                  const Text('Product Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(product.description ?? 'No description available.', style: const TextStyle(fontSize: 16))
                ],
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}