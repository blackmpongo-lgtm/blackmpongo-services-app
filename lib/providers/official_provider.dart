import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Official model
class Official {
  final String id;
  final String name;
  final String profile;

  Official({required this.id, required this.name, required this.profile});

  factory Official.fromJson(Map<String, dynamic> json) {
    return Official(
      id: json['id'],
      name: json['name'],
      profile: json['profile'],
    );
  }
}

// Fetching officials
Future<List<Official>> fetchOfficials() async {
  final response = await http.get(Uri.parse('https://api.example.com/officials'));

  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((official) => Official.fromJson(official)).toList();
  } else {
    throw Exception('Failed to load officials');
  }
}

// Riverpod provider
final officialsProvider = FutureProvider<List<Official>>((ref) async {
  final officials = await fetchOfficials();
  return officials;
});
