class PromoEkslusif {
  final String id;
  final String name;
  final String subname;
  final String description1;
  final String description2;
  final String description3;
  final String brand;
  final String type;
  final String image;
  final String rating;
  final String totalRating;
  PromoEkslusif(
    this.id,
    this.name,
    this.subname,
    this.description1,
    this.description2,
    this.description3,
    this.brand,
    this.type,
    this.image,
    this.rating,
    this.totalRating,
  );
}

List<PromoEkslusif> promosEkslusif = promoEkslusifData
    .map(
      (item) => PromoEkslusif(
        item['id'].toString(),
        item['name'].toString(),
        item['subname'].toString(),
        item['description1'].toString(),
        item['description2'].toString(),
        item['description3'].toString(),
        item['brand'].toString(),
        item['type'].toString(),
        item['image'].toString(),
        item['rating'].toString(),
        item['totalRating'].toString(),
      ),
    )
    .toList();

var promoEkslusifData = [
  {
    'id': '1',
    'name': 'Diskon Ongkir 80%',
    'subname': 'Berlaku untuk semua makanan',
    'description1': '• 20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': '• For all products',
    'description3': '• Minimal pembelian Rp100.000,00',
    'brand': './logo/square/gofood.png',
    'type': 'diskon',
    'image': './image/brand/gofood.png',
    'rating': '4.8',
    'totalRating': '178',
  },
  {
    'id': '2',
    'name': 'Potongan 90%',
    'subname': 'Berlaku untuk semua produk',
    'description1': '• 20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': '• For all products',
    'description3': '• Minimal pembelian Rp100.000,00',
    'brand': './logo/square/shopee.png',
    'type': 'diskon',
    'image': './image/brand/shopee.png',
    'rating': '4.85',
    'totalRating': '244',
  },
  {
    'id': '3',
    'name': 'Cashback 99%',
    'subname': 'Berlaku untuk semua produk',
    'description1': '• 20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': '• For all products',
    'description3': '• Minimal pembelian Rp100.000,00',
    'brand': './logo/square/bukalapak.png',
    'type': 'diskon',
    'image': './image/brand/bukalapak.png',
    'rating': '4.95',
    'totalRating': '589',
  },
];
