import 'package:studentbankmobile/mobilite/light/admission.dart';

import 'user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/wali_mai.jpg',
);

// USERS
final User wali = User(
  id: 1,
  name: 'wali mai',
  imageUrl: 'images/wali_mai.jpg',
);
final User christophe = User(
  id: 2,
  name: 'Christophe Dupon',
  imageUrl: 'images/christoph_dupon.jpg',
);
final User Aliou = User(
  id: 3,
  name: 'Aliou',
  imageUrl: 'images/person-removebg-preview.png',
);
final User Yassin = User(
  id: 4,
  name: 'yassin Dan',
  imageUrl: 'images/yassin Dan.jpg',
);
final User Adeline = User(
  id: 5,
  name: 'Adeline kristov',
  imageUrl: 'images/Adelin kritov.jpg',
);
final User Alex = User(
  id: 6,
  name: 'Alex Dupon',
  imageUrl: 'images/alex_dupon.jpg',
);
final User Anna = User(
  id: 7,
  name: 'Anna Dalanda',
  imageUrl: 'images/Anna Dalanda.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [Alex, Adeline, Anna, Yassin, Aliou, wali];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: christophe,
    time: '5:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Yassin,
    time: '4:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Aliou,
    time: '3:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Anna,
    time: '2:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: christophe,
    time: '1:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Adeline,
    time: '12:30 PM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: wali,
    time: '11:30 AM',
    text: 'lorem ipseum htuui juity huyr ikj',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: christophe,
    time: '5:30 PM',
    text: 'leren hjo ujoi the fuirioj',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Lorem ipsum fedora is the beuj',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: christophe,
    time: '3:45 PM',
    text: 'How\'s do you find this app',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: christophe,
    time: '3:15 PM',
    text: 'so cool',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Lorem dolor ipsul',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: christophe,
    time: '2:00 PM',
    text: 'lorem ipsum dolor',
    isLiked: false,
    unread: true,
  ),
];
