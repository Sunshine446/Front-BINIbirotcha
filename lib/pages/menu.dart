import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled1/pages/selectedProduct.dart';
import 'package:untitled1/services/product.dart';
import 'package:untitled1/services/menuCard.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}



class _MenuState extends State<Menu> {
   late Future<List<dynamic>> products;
   Future<List<dynamic>> fetchData() async {
     final response = await http.get(
         Uri.parse('http://10.0.2.2:8080/api/v1/product/all'));
     final data = jsonDecode(response.body);
     List products = <Product>[];
     for (var product in data) {
       Product sample = Product.fromJSon(product);
       print(sample.productName);
       products.add(
         Product(
             id: product['id'],
             productName: product['productName'],
             description: product['description'],
             price: product['price'],
             url: product['url']
         )
       );
     }
     print(products);
     return products;
   }

   @override
  void initState() {
    super.initState();
    products = fetchData();
  }

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
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage('assets/gege.jpg'),
             fit: BoxFit.cover
         ),
       ),
       child: Padding(
         padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
         child: FutureBuilder(
           future: products,
           builder: (context, snapshots) {
             if (snapshots.connectionState == ConnectionState.waiting) {
               return Center(
                 child: SpinKitHourGlass(
                   color: Colors.pink,
                   size: 60.0,
                 ),
               );
             }
             if (snapshots.hasData) {
               List products = snapshots.data!;
               return Padding(
                 padding: EdgeInsets.all(3.0),
                 child: ListView.builder(
                     itemCount: products.length,
                     itemBuilder: (context, index) {
                       return Card(
                         child: ListTile(
                           title: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(products[index].productName),
                               Text(products[index].price.toString())
                             ],
                           ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => selectedProduct(product: products[index]),
                                  )
                              );
                            },

                         ),
                       );
                     }
                 ),
               );
             }
             return Center(
               child: Text('Unable to load data'),
             );
           },
         ),
       ),
     ),
    );
    }
}

