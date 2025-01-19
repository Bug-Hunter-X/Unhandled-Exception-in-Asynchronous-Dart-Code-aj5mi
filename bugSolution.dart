```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle specific error responses
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on http.ClientException catch (e) {
    // Handle network errors
    print('Network error: $e');
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON parsing error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
  }
}
```