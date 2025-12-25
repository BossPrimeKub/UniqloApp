class Uniqlo {
  final String imgUrl;
  final String name;
  final String description;
  final int price;

  Uniqlo({
    required this.imgUrl,
    required this.name,
    required this.description,
    required this.price,
  });

  static List<Uniqlo> samples = [
    Uniqlo(
      imgUrl: 'assets/uniqlo1.webp',
      name: 'Uniqlo Crew Neck T-Shirt',
      description: 'Comfortable cotton T-shirt suitable for everyday wear.',
      price: 390,
    ),
    Uniqlo(
      imgUrl: 'assets/uniqlo2.webp',
      name: 'Uniqlo Shirt',
      description: 'Simple design with premium fabric.',
      price: 590,
    ),
  ];
}
