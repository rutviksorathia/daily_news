part of 'auth.dart';

class ApiRequestRequestBody {
  String email;
  String password;

  ApiRequestRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};

    map['email'] = email;
    map['password'] = password;

    return map;
  }
}

Future<UserRegistration> apiRequestBody(
    {required ApiRequestRequestBody body}) async {
  var response = await http.post(
    Uri.parse('https://reqres.in/api/register'),
    body: body.toMap(),
  );

  final last = json.decode(response.body);

  return UserRegistration.fromMap(last);
}
