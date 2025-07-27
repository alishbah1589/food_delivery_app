class Product {
  final String title;
  final int price;
  final String image;
  Product({required this.title, required this.price, required this.image});
}

final List<Product> products = [
  Product(title: 'Noodless', price: 500, image: 'assets/noodles.jpg')
];
