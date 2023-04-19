import 'package:dio/dio.dart';

void main() async {
  try {
    var dio = Dio();
    var response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: {
        'id': 1,
        'title': 'foo',
        'body': 'bar',
        'userId': 1,
      },
    );
    print(response.statusCode);
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}