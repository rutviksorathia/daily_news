part of 'auth.dart';

class UserRegistration {
  int id;
  String token;

  UserRegistration({
    required this.id,
    required this.token,
  });

  factory UserRegistration.fromMap(Map<String, dynamic> map) {
    return UserRegistration(
      id: 4,
      token: 'QpwL5tke4Pnpja7X4',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
    };
  }
}
