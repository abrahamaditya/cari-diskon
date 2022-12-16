class PromoTrending {
  final String id;
  final String GUID;
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
    this.GUID,
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
        item['GUID'].toString(),
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
    'id': '24',
    'GUID': '5dfaefe2-f589-47f0-9097-b1b99f0c51a2',
    'name': 'Cashback 50%',
    'subname': 'Pembayaran melalui Paylater',
    'description1': '27/12/2022 00:00 - 28/12/2022 23:59',
    'description2': 'Untuk kategori fashion',
    'description3': 'Tidak ada minimal pembelian',
    'brand': 'assets/logo/square/shopee.png',
    'type': 'kode',
    'rating': '4.7',
    'totalRating': '195',
  },
  {
    'id': '25',
    'GUID': '21372d05-6223-4218-9d87-b9473d587df4',
    'name': 'Diskon 20% Elektronik',
    'subname': 'Pembayaran melalui GoPay',
    'description1': '27/12/2022 00:00 - 29/12/2022 23:59',
    'description2': 'Untuk kategori elektronik',
    'description3': 'Maksimal potongan Rp25.000,00',
    'brand': 'assets/logo/square/tokopedia.png',
    'type': 'diskon',
    'rating': '4.65',
    'totalRating': '171',
  },
  {
    'id': '26',
    'GUID': '0606ace5-56bd-4265-9f2a-f0c1cc4bd4cd',
    'name': 'Promo McDelivery 10%',
    'subname': 'Pembayaran melalui Bank Mega',
    'description1': '28/12/2022 00:00 - 29/12/2022 23:59',
    'description2': 'Untuk semua produk',
    'description3': 'Menggunakan aplikasi McDonald\'s',
    'brand': 'assets/logo/square/mcdonalds.png',
    'type': 'diskon',
    'rating': '4.4',
    'totalRating': '107',
  },
];
