import 'dart:convert';
import 'package:dio/dio.dart';

class Contact {
  final String name;
  final String phone;
  final String email;

  Contact({
    required this.name,
    required this.phone,
    required this.email,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}

void main() async {
  try {
    var dio = Dio();
    var response = await dio.get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
    var json = jsonDecode(response.data);
    var contact = Contact.fromJson(json);
    print(contact.name);
    print(contact.phone);
    print(contact.email);
  } catch (e) {
    print(e.toString());
  }
}