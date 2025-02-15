```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      // Process the JSON response
      final data = jsonDecode(response.body);
    } else {
      // Error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Exception handling
    print('Error fetching data: $e');
    // Rethrow the exception to be handled higher up in the call stack
    rethrow; 
  }
}
```