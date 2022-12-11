import 'package:caridiskon/data/review.dart';

class TukarPoin {
  final String id;
  final String GUID;
  final String name;
  final String poin;
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
  TukarPoin(
    this.id,
    this.GUID,
    this.name,
    this.poin,
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

List<TukarPoin> tukarpoin = TukarPoinData.map(
  (item) => TukarPoin(
    item['id'].toString(),
    item['GUID'].toString(),
    item['name'].toString(),
    item['poin'].toString(),
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

var TukarPoinData = [
  {
    'id': '0',
    'GUID': '71384185-6108-4778-a5ab-77011b214f76',
    'name': 'Diskon GrabFood untuk semua makanan',
    'poin': '20',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '20%',
    'brand': 'GrabFood',
    'logo': 'assets/logo/square/grabfood.png',
    'framedLogo': 'assets/logo/frame/grabfood.png',
    'image': 'assets/image/brand/grabfood.png',
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
        'GUID': 'd1f57a4d-cdb7-4527-8570-b61f002fa6be',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '1',
        'GUID': 'bf51bcec-247c-44aa-98e2-e01c99e55f45',
        'name': 'Yuda',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '3 hari yang lalu',
        'comment': 'Mantap, bang.',
        'rating': '4.0',
        'likes': '92',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '2',
    'GUID': '48e5275b-0884-44da-a231-affbd0c02a3b',
    'name': 'Promo KFC paket combo',
    'poin': '10',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '20%',
    'brand': 'KFC',
    'logo': 'assets/logo/square/kfc.png',
    'framedLogo': 'assets/logo/frame/kfc.png',
    'image': 'assets/image/brand/kfc.png',
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
        'GUID': '345239a0-630c-4977-bbb8-9dabe27a34a8',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': '30fdca20-2757-4711-989d-344308ce9003',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '4',
    'GUID': 'd450a46a-2c6a-49bb-ac59-e88e23c65b94',
    'name': 'Diskon semua pizza hanya di Pizza Hut area Jabodetabek',
    'poin': '10',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '25%',
    'brand': 'Pizza Hut',
    'logo': 'assets/logo/square/pizzahut.png',
    'framedLogo': 'assets/logo/frame/pizzahut.png',
    'image': 'assets/image/brand/pizzahut.png',
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
        'GUID': 'fb03632d-1839-4077-b687-375027500b81',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': 'b2f21c67-cb77-4711-90de-77ef2f703f7d',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '7',
    'GUID': '2734dd59-64f8-4249-8fc2-bf4f5cc242a6',
    'name': 'Hemat 60% menu PaNas 2 di McDonald\'s',
    'poin': '40',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '60%',
    'brand': 'McDonald\'s',
    'logo': 'assets/logo/square/mcdonalds.png',
    'framedLogo': 'assets/logo/frame/mcdonalds.png',
    'image': 'assets/image/brand/mcdonalds.png',
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
        'GUID': '74999f8b-b572-40fa-86f3-89437b386605',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': 'c0dd69d4-7b43-480e-99a5-cab224da6b59',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '11',
    'GUID': '959de8e4-c2d7-4e7b-b0cf-231f5a1a61e5',
    'name': 'Nikmati potongan isi ulang pulsa di Tokopedia',
    'poin': '25',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '50%',
    'brand': 'Tokopedia',
    'logo': 'assets/logo/square/tokopedia.png',
    'framedLogo': 'assets/logo/frame/tokopedia.png',
    'image': 'assets/image/brand/tokopedia.png',
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
        'GUID': 'e32ad41e-2f04-4459-991e-8e5ac70c7137',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': '983d90b7-3d94-4073-b673-7951f527cdb0',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '13',
    'GUID': 'fc6af9c2-ff13-498f-bc64-218ee4992108',
    'name': 'Potongan 50% naik GrabCar',
    'poin': '50',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '50%',
    'brand': 'Grab',
    'logo': 'assets/logo/square/grab.png',
    'framedLogo': 'assets/logo/frame/grab.png',
    'image': 'assets/image/brand/grab.png',
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
        'GUID': 'a8761d49-76b7-44ab-8084-24be59b0aac5',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': '6974a847-6881-4760-b2f2-fa1f0bacf3b6',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '17',
    'GUID': '96703f6a-8ab0-4afc-8fef-aaee7ffe9af1',
    'name': 'Promo member di Starbucks',
    'poin': '50',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '5%',
    'brand': 'Starbucks',
    'logo': 'assets/logo/square/starbucks.png',
    'framedLogo': 'assets/logo/frame/starbucks.png',
    'image': 'assets/image/brand/starbucks.png',
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
        'GUID': 'edb2d313-1656-4f43-8c5c-fe5bc8043904',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': '0415621b-d9ae-4d8c-bd0e-07c7694282a4',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
  {
    'id': '19',
    'GUID': 'a8bbcd81-c4fd-4f71-9cf3-ec9859d54510',
    'name': 'Diskon untuk semua pizza di Domino\'s Pizza',
    'poin': '75',
    'description1':
        'Berlaku untuk Take Away, Drive Thru, McDelivery website dan mobile, McDelivery 14045, Aplikasi McDelivery, GrabFood, GoFood.',
    'description2': 'Pembelian menu lain dengan total minimal Rp25.000,00.',
    'description3': 'Promo tidak berlaku kelipatan (satu per struk).',
    'amount': '15%',
    'brand': 'Domino\'s Pizza',
    'logo': 'assets/logo/square/dominospizza.png',
    'framedLogo': 'assets/logo/frame/dominospizza.png',
    'image': 'assets/image/brand/dominospizza.png',
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
        'GUID': 'ae1a3ff4-02f1-4af5-9a67-e8e90572d126',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
      {
        'id': '2',
        'GUID': 'd644c0c2-16c7-4d5e-8029-51aca562de66',
        'name': 'Lica',
        'profilePicture': 'assets/image/profile_picture/default.jpeg',
        'date': '1 hari yang lalu',
        'comment':
            'Makasih, CariDiskon!! Aku traktir temen-temen jadi lebih hemat pakai kupon promo ini :D Mantap banget, deh!',
        'rating': '5.0',
        'likes': '101',
        'likeButton': false,
      },
    ]
        .map(
          (item) => Review(
            item['id'].toString(),
            item['GUID'].toString(),
            item['name'].toString(),
            item['profilePicture'].toString(),
            item['date'].toString(),
            item['comment'].toString(),
            item['rating'].toString(),
            item['likes'].toString(),
            item['likeButton'] as bool,
          ),
        )
        .toList(),
  },
];
