import 'package:flutter/material.dart';
import 'package:untitled1/services/product.dart';
import 'package:untitled1/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
   List products = <Product>[
     Product(productName: "Bini T-Shirt", price: 1669.99),
     Product(productName: "Bini Bracelet", price: 1199.99),
     Product(productName: "Bini Photocard Holder", price: 799.99),
     Product(productName: "Bini Photocard Album", price: 999.99),
     Product(productName: "Bini Wand", price: 2499.99),
     Product(productName: "Bini Holographic Stickers", price: 199.99),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        foregroundColor: Colors.black,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: products.map((product) => Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}

