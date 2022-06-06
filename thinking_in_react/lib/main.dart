import 'package:flutter/material.dart';
import 'checkbox.dart' as checkbox;

void main() => {runApp(const MyApp())};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FilterableProductTable());
  }
}

class FilterableProductTable extends StatelessWidget {
  const FilterableProductTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        SearchBar(),
        ProductTable(),
      ],
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Name'),
        Text('Price'),
        ProductCategoryRow(),
      ],
    );
  }
}

class ProductCategoryRow extends StatelessWidget {
  const ProductCategoryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.amber),
        child: Column(
          children: const [ProductRow()],
        ));
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.cyan),
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Football'),
              Text('99'),
              Text('Baseball'),
              Text('89')
            ],
          ),
        ));
  }
}
