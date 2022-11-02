class PromoTrending {
  final String id;
  final String name;
  final String subname;
  final String description1;
  final String description2;
  final String description3;
  final String brand;
  final String type;
  final String rating;
  final String totalRating;
  PromoTrending(
    this.id,
    this.name,
    this.subname,
    this.description1,
    this.description2,
    this.description3,
    this.brand,
    this.type,
    this.rating,
    this.totalRating,
  );
}

List<PromoTrending> promosTrending = promoTrendingData
    .map(
      (item) => PromoTrending(
        item['id'].toString(),
        item['name'].toString(),
        item['subname'].toString(),
        item['description1'].toString(),
        item['description2'].toString(),
        item['description3'].toString(),
        item['brand'].toString(),
        item['type'].toString(),
        item['rating'].toString(),
        item['totalRating'].toString(),
      ),
    )
    .toList();

var promoTrendingData = [
  {
    'id': '1',
    'name': 'Cashback 50%',
    'subname': 'Pembayaran melalui Paylater',
    'description1': '20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': 'For all products',
    'description3': 'Minimal pembelian Rp100.000,00',
    'brand': './logo/square/shopee.png',
    'type': 'kode',
    'rating': '4.7',
    'totalRating': '195',
  },
  {
    'id': '2',
    'name': 'Diskon 20% Elektronik',
    'subname': 'Berlaku untuk semua produk',
    'description1': '20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': 'For all products',
    'description3': 'Minimal pembelian Rp100.000,00',
    'brand': './logo/square/tokopedia.png',
    'type': 'diskon',
    'rating': '4.65',
    'totalRating': '171',
  },
  {
    'id': '3',
    'name': 'Promo McDelivery 10%',
    'subname': 'Pembayaran melalui GoPay',
    'description1': '20/04/2022 00:00 – 27/04/2022 00:00',
    'description2': 'For all products',
    'description3': 'Minimal pembelian Rp100.000,00',
    'brand': './logo/square/mcdonalds.png',
    'type': 'diskon',
    'rating': '4.4',
    'totalRating': '107',
  },
];
