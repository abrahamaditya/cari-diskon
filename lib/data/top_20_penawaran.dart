import 'package:caridiskon/data/review.dart';

class Top20Penawaran {
  final String id;
  final String name;
  final String description1;
  final String description2;
  final String description3;
  final String amount;
  final String brand;
  final String logo;
  final String framedLogo;
  final String image;
  final String deadline;
  final String type;
  final String code;
  final String website;
  final String category;
  final String rating;
  final String totalRating;
  final List<Review> review;
  Top20Penawaran(
    this.id,
    this.name,
    this.description1,
    this.description2,
    this.description3,
    this.amount,
    this.brand,
    this.logo,
    this.framedLogo,
    this.image,
    this.deadline,
    this.type,
    this.code,
    this.website,
    this.category,
    this.rating,
    this.totalRating,
    this.review,
  );
}

List<Top20Penawaran> top20penawaran = Top20PenawaranData.map(
  (item) => Top20Penawaran(
    item['id'].toString(),
    item['name'].toString(),
    item['description1'].toString(),
    item['description2'].toString(),
    item['description3'].toString(),
    item['amount'].toString(),
    item['brand'].toString(),
    item['logo'].toString(),
    item['framedLogo'].toString(),
    item['image'].toString(),
    item['deadline'].toString(),
    item['type'].toString(),
    item['code'].toString(),
    item['website'].toString(),
    item['category'].toString(),
    item['rating'].toString(),
    item['totalRating'].toString(),
    item['review'] as List<Review>,
  ),
).toList();

var Top20PenawaranData = [
  {
    'id': '0',
    'name': 'Diskon GrabFood untuk semua makanan',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '20%',
    'brand': 'GrabFood',
    'logo': './logo/square/grabfood.png',
    'framedLogo': './logo/frame/grabfood.png',
    'image': './image/brand/grabfood.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://food.grab.com/id/id/',
    'category': 'Makanan & Minuman',
    'rating': '4.4',
    'totalRating': '210',
    'review': [
      {
        'id': '0',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '1',
        'name': 'Yuda',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '3 hari yang lalu',
        'comment': 'Mantap, bang.',
        'rating': '4.0',
        'likes': '92',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '1',
    'name': 'Cashback Bukalapak untuk produk elektronik',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '10 Ribu',
    'brand': 'Bukalapak',
    'logo': './logo/square/bukalapak.png',
    'framedLogo': './logo/frame/bukalapak.png',
    'image': './image/brand/bukalapak.png',
    'deadline': '5 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Elektronik',
    'rating': '4.5',
    'totalRating': '282',
    'review': [
      {
        'id': '2',
        'name': 'Anon',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '8 jam yang lalu',
        'comment':
            'Penyelamat kantong wkwkwk lumayan lah 75 rebu. Thank you, CariDiskon.',
        'rating': '5.0',
        'likes': '72',
      },
      {
        'id': '3',
        'name': 'Arif',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '6 hari yang lalu',
        'comment': 'Kodenya work, sih. Cuma kurang banyak aja.',
        'rating': '3.0',
        'likes': '42',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '2',
    'name': 'Promo KFC paket combo',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '20%',
    'brand': 'KFC',
    'logo': './logo/square/kfc.png',
    'framedLogo': './logo/frame/kfc.png',
    'image': './image/brand/kfc.png',
    'deadline': '4 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.5',
    'totalRating': '183',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '3',
    'name': 'Potongan ongkir di GoFood',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '10 Ribu',
    'brand': 'GoFood',
    'logo': './logo/square/gofood.png',
    'framedLogo': './logo/frame/gofood.png',
    'image': './image/brand/gofood.png',
    'deadline': '2 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.5',
    'totalRating': '331',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '4',
    'name': 'Diskon semua pizza hanya di Pizza Hut area Jabodetabek',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '25%',
    'brand': 'Pizza Hut',
    'logo': './logo/square/pizzahut.png',
    'framedLogo': './logo/frame/pizzahut.png',
    'image': './image/brand/pizzahut.png',
    'deadline': '2 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.pizzahut.co.id/',
    'category': 'Makanan & Minuman',
    'rating': '4.6',
    'totalRating': '107',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '5',
    'name': 'Gratis ongkir sepuasnya',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '100%',
    'brand': 'PHD',
    'logo': './logo/square/pizzahutdelivery.png',
    'framedLogo': './logo/frame/pizzahutdelivery.png',
    'image': './image/brand/pizzahutdelivery.png',
    'deadline': '1 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.95',
    'totalRating': '474',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '6',
    'name': 'Diskon booking tiket pesawat di Traveloka',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '30%',
    'brand': 'Traveloka',
    'logo': './logo/square/traveloka.png',
    'framedLogo': './logo/frame/traveloka.png',
    'image': './image/brand/traveloka.png',
    'deadline': '6 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.traveloka.com/',
    'category': 'Transportasi',
    'rating': '4.1',
    'totalRating': '123',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '7',
    'name': 'Hemat 60% menu PaNas 2 di McDonald\'s',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '60%',
    'brand': 'McDonald\'s',
    'logo': './logo/square/mcdonalds.png',
    'framedLogo': './logo/frame/mcdonalds.png',
    'image': './image/brand/mcdonalds.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://mcdonalds.co.id/',
    'category': 'Makanan & Minuman',
    'rating': '4.3',
    'totalRating': '230',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '8',
    'name': 'Diskon ongkir Gojek',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '80%',
    'brand': 'Gojek',
    'logo': './logo/square/gojek.png',
    'framedLogo': './logo/frame/gojek.png',
    'image': './image/brand/gojek.png',
    'deadline': '6 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.gojek.com/',
    'category': 'Transportasi',
    'rating': '4.1',
    'totalRating': '299',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '9',
    'name': 'Gratis ongkir di ShopeeFood',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '100%',
    'brand': 'ShopeeFood',
    'logo': './logo/square/shopeefood.png',
    'framedLogo': './logo/frame/shopeefood.png',
    'image': './image/brand/shopeefood.png',
    'deadline': '2 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.8',
    'totalRating': '311',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '10',
    'name': 'Cashback 10% hanya di Richeese Factory',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '10%',
    'brand': 'Richeese Factory',
    'logo': './logo/square/richeesefactory.png',
    'framedLogo': './logo/frame/richeesefactory.png',
    'image': './image/brand/richeesefactory.png',
    'deadline': '8 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.richeesefactory.com/id',
    'category': 'Makanan & Minuman',
    'rating': '4.55',
    'totalRating': '39',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '11',
    'name': 'Nikmati potongan isi ulang pulsa di Tokopedia',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '50%',
    'brand': 'Tokopedia',
    'logo': './logo/square/tokopedia.png',
    'framedLogo': './logo/frame/tokopedia.png',
    'image': './image/brand/tokopedia.png',
    'deadline': '1 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Lainnya',
    'rating': '4.8',
    'totalRating': '83',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '12',
    'name': 'Gratis seluruh pembelian melalui AirAsia Food',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '100%',
    'brand': 'AirAsia Food',
    'logo': './logo/square/airasiafood.png',
    'framedLogo': './logo/frame/airasiafood.png',
    'image': './image/brand/airasiafood.png',
    'deadline': '1 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.95',
    'totalRating': '77',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '13',
    'name': 'Potongan 50% naik GrabCar',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '50%',
    'brand': 'Grab',
    'logo': './logo/square/grab.png',
    'framedLogo': './logo/frame/grab.png',
    'image': './image/brand/grab.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://grab.com/id/',
    'category': 'Transportasi',
    'rating': '4.8',
    'totalRating': '131',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '14',
    'name': 'Potongan hingga 30k di Traveloka Eats',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '70%',
    'brand': 'Traveloka Eats',
    'logo': './logo/square/travelokaeats.png',
    'framedLogo': './logo/frame/travelokaeats.png',
    'image': './image/brand/travelokaeats.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.traveloka.com/id-id/restaurants',
    'category': 'Makanan & Minuman',
    'rating': '4.9',
    'totalRating': '149',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '15',
    'name': 'Diskon sepatu olahraga hanya di Shopee',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '50%',
    'brand': 'Shopee',
    'logo': './logo/square/shopee.png',
    'framedLogo': './logo/frame/shopee.png',
    'image': './image/brand/shopee.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://shopee.co.id/',
    'category': 'Olahraga',
    'rating': '4.75',
    'totalRating': '150',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '16',
    'name': 'Diskon produk kecantikan di Tokopedia',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '10%',
    'brand': 'Tokopedia',
    'logo': './logo/square/tokopedia.png',
    'framedLogo': './logo/frame/tokopedia.png',
    'image': './image/brand/tokopedia.png',
    'deadline': '7 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.tokopedia.com/',
    'category': 'Perawatan Tubuh',
    'rating': '4.2',
    'totalRating': '153',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '17',
    'name': 'Promo member di Starbucks',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '5%',
    'brand': 'Starbucks',
    'logo': './logo/square/starbucks.png',
    'framedLogo': './logo/frame/starbucks.png',
    'image': './image/brand/starbucks.png',
    'deadline': '1 HARI LAGI',
    'type': 'Kode',
    'code': 'ABC123',
    'website': 'null',
    'category': 'Makanan & Minuman',
    'rating': '4.9',
    'totalRating': '180',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '18',
    'name': 'Diskon fashion muslim hanya di Shopee',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '15%',
    'brand': 'Shopee',
    'logo': './logo/square/shopee.png',
    'framedLogo': './logo/frame/shopee.png',
    'image': './image/brand/shopee.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://shopee.co.id/',
    'category': 'Fashion',
    'rating': '4.9',
    'totalRating': '201',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '19',
    'name': 'Diskon untuk semua pizza di Domino\'s Pizza',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '15%',
    'brand': 'Domino\'s Pizza',
    'logo': './logo/square/dominospizza.png',
    'framedLogo': './logo/frame/dominospizza.png',
    'image': './image/brand/dominospizza.png',
    'deadline': '2 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.dominos.co.id/',
    'category': 'Makanan & Minuman',
    'rating': '4.0',
    'totalRating': '111',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
  {
    'id': '20',
    'name': 'Diskon masker medis di Tokopedia',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '80%',
    'brand': 'Tokopedia',
    'logo': './logo/square/tokopedia.png',
    'framedLogo': './logo/frame/tokopedia.png',
    'image': './image/brand/tokopedia.png',
    'deadline': '3 HARI LAGI',
    'type': 'Diskon',
    'code': 'null',
    'website': 'https://www.tokopedia.com/',
    'category': 'Kesehatan',
    'rating': '4.45',
    'totalRating': '168',
    'review': [
      {
        'id': '1',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
      {
        'id': '2',
        'name': 'Lica',
        'profilePicture': './image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
          ),
        )
        .toList(),
  },
];
