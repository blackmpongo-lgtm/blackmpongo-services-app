import 'dart:convert';
import 'package:http/http.dart' as http;

class OfficialService {
  final String apiUrl;
  
  OfficialService(this.apiUrl);

  Future<List<Map<String, dynamic>>> fetchOfficials() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        return jsonResponse.map((official) => official as Map<String, dynamic>).toList();
      } else {
        throw Exception('Failed to load officials');
      }
    } catch (error) {
      throw Exception('Error fetching officials: \$error');
    }
  }
}