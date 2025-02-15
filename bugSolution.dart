```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final data = jsonDecode(response.body);
      // Handle the data
    } else {
      // Handle specific HTTP error codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
  } on FormatException catch (e) {
    print('JSON decoding error: $e');
  } catch (e) {
    print('General error: $e');
  }
}
```