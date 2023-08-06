class UserData {
  String id;
  String password;
  String name;
  String avatar;
  String email;
  String phone;
  String gender;
  String disability;
  String address;
  String birth;

  UserData({
    required this.id,
    required this.password,
    required this.name,
    required this.avatar,
    required this.email,
    required this.phone,
    required this.gender,
    required this.disability,
    required this.address,
    required this.birth,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'password': password,
      'name': name,
      'avatar': avatar,
      'email': email,
      'phone': phone,
      'gender': gender,
      'disability': disability,
      'address': address,
      'birth': birth,
    };
  }
}
