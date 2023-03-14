//Удаление данных из Интернета
import 'dart:convert';

import 'package:http/http.dart' as http;

class Album {
  int id;
  String title;
  Album({required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'] as int,
      title: json['title'] as String,
    );
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/\$id'),
  );
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception(' Error: ${response.reasonPhrase}');
  }
}

Future<Album> deleteAlbum() async {
  final http.Response response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/\$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      });
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
