import 'package:flutter/material.dart';

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
    return Column(
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
    return const MaterialApp();
  }
}

class ProductTable extends StatelessWidget {
  const ProductTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProductCategoryRow(),
      ],
    );
  }
}

class ProductCategoryRow extends StatelessWidget {
  const ProductCategoryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [ProductRow(), Text('data')],
    );
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [Text('Football'), Text('\$99')],
      ),
    );
  }
}
