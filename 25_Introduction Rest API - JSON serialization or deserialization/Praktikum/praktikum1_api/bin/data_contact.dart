import 'package:dio/dio.dart';

void main() async {
  try {
    var dio = Dio();
    var response = await dio.post(
      'http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: {
        'name': 'John Doe',
        'phone': '1234567890',
        'email': 'johndoe@example.com',
      },
    );
    print(response.statusCode);
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}