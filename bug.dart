```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = json.decode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle general exceptions (e.g., network errors)
    print('Error fetching data: $e');
    // Additional error handling or logging
  }
}
```