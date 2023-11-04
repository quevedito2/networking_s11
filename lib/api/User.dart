class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar});

// encargado de convertir un json a un objeto de tipo User
  static User ObjJson(Map<String, dynamic> json) {
    return User(
        id: json['id'] as int,
        email: json['email'] as String,
        firstName: json['first_name'] as String,
        lastName: json['last_name'] as String,
        avatar: json['avatar'] as String);
  }
}
