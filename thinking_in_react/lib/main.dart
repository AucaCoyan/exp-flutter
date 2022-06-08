import 'package:flutter/material.dart';
import 'checkbox.dart' as checkbox;

void main() => {runApp(const MyApp())};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FilterableProductTable(),
    );
  }
}

class FilterableProductTable extends StatelessWidget {
  const FilterableProductTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // app background color
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SearchBar(),
          ProductTable(),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: [
        const TextField(decoration: InputDecoration(labelText: 'Search')),
        Row(
          children: const [
            checkbox.CheckboxWidget(),
            Text('Only show products in stock'),
          ],
        )
      ]),
    ));
  }
}

class ProductTable extends StatelessWidget {
  const ProductTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderRow(),
        Product1(),
        Product1(),
        Product1(),
        Product1(),
        Product1(),
      ],
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'Name',
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            'Price',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          )
        ]);
  }
}

class Product1 extends StatelessWidget {
  const Product1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'Basketball',
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            '\$99.99',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          )
        ]);
  }
}
