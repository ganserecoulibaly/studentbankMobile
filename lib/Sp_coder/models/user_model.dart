
class UserModel {
  final String id;
  final String username;
  final String number;
  final String email;
  final String profileImage;

  UserModel({
    required this.id,
    required this.username,
    required this.number,
    required this.email,
    required this.profileImage,
  });
}

UserModel newUser = UserModel(
  id: '123',
  username: 'john_doe',
  number: '+221709568545',
  email: 'john@example.com',
  profileImage: 'url_de_l_image',
);


