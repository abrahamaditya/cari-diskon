class Account {
  final String id;
  final String GUID;
  final String name;
  final String phone;
  final String email;
  final String password;
  String poin;
  List<String> promoTaken;
  Account(
    this.id,
    this.GUID,
    this.name,
    this.phone,
    this.email,
    this.password,
    this.poin,
    this.promoTaken,
  );
}

List<Account> account = accountData
    .map(
      (item) => Account(
        item['id'].toString(),
        item['GUID'].toString(),
        item['name'].toString(),
        item['phone'].toString(),
        item['email'].toString(),
        item['password'].toString(),
        item['poin'].toString(),
        item['promoTaken'] as List<String>,
      ),
    )
    .toList();

var accountData = [
  {
    'id': '1',
    'GUID': 'ada60cd3-64dc-42cc-86de-4a186830e32d',
    'name': 'Oei Angela Christabel Gunawan',
    'phone': '+62',
    'email': 'oei.gunawan@binus.ac.id',
    'password': 'angel123',
    'poin': '100',
    'promoTaken': [
      '-1',
    ],
  },
  {
    'id': '2',
    'GUID': '27c6c790-c376-4d48-963b-10b97b38407f',
    'name': 'Abraham Aditya Sudjatmoko',
    'phone': '+62',
    'email': 'abraham.sudjatmoko@binus.ac.id',
    'password': 'abam123',
    'poin': '80',
    'promoTaken': [
      '-1',
    ],
  },
  {
    'id': '3',
    'GUID': '275901b7-d39a-445b-8cfc-60e4423417a8',
    'name': 'Ernest Christca Malvinprabowo Markus',
    'phone': '+62',
    'email': 'ernest.markus@binus.ac.id',
    'password': 'ernest123',
    'poin': '60',
    'promoTaken': [
      '-1',
    ],
  },
  {
    'id': '4',
    'GUID': '3711086c-84e6-47e6-a87a-6463bfc6e3f9',
    'name': 'Jason Stanlie',
    'phone': '+62',
    'email': 'jason.stanlie@binus.ac.id',
    'password': 'jason123',
    'poin': '40',
    'promoTaken': [
      '-1',
    ],
  },
  {
    'id': '5',
    'GUID': 'cc50148e-49d3-4038-8dc7-8ac0094ab4dc',
    'name': 'Ina',
    'phone': '+62',
    'email': 'ina@binus.ac.id',
    'password': 'ina123',
    'poin': '20',
    'promoTaken': [
      '-1',
    ],
  },
];

class AccountAuthorized {
  final String id;
  final String GUID;
  final String name;
  final String phone;
  final String email;
  final String password;
  String poin;
  List<String> promoTaken;
  AccountAuthorized(
    this.id,
    this.GUID,
    this.name,
    this.phone,
    this.email,
    this.password,
    this.poin,
    this.promoTaken,
  );
}

Account? accountAuthorized;

// Account accountAuthorized = new Account(
//   "10",
//   "15cf16a7-e680-468b-92e3-9f476e9e7f93",
//   "Samuel Santoso",
//   "+62824276238",
//   "samuel.santoso@binus.ac.id",
//   "password",
//   "100",
//   [],
// );
