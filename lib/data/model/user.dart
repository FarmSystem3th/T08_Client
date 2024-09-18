// 유저모델
class User {
  final int id;
  final String password;
  final String name;
  final String phone;
  final String email;
  final String grade;
  final String role;
  final String currentAddress;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final String status;

  User({
    required this.id,
    required this.password,
    required this.name,
    required this.phone,
    required this.email,
    required this.grade,
    required this.role,
    required this.currentAddress,
    required this.createdDate,
    required this.modifiedDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'password': password,
      'name': name,
      'phone': phone,
      'email': email,
      'grade': grade,
      'role': role,
      'currentAddress': currentAddress,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
      'status': status,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      password: map['password'],
      name: map['name'],
      phone: map['phone'],
      email: map['email'],
      grade: map['grade'],
      role: map['role'],
      currentAddress: map['currentAddress'],
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
      status: map['status'],
    );
  }
}