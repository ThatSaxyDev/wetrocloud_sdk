import 'package:wetrocloud_sdk/wetrocloud.dart';

void main() async {
  // Initialize WetroCloud SDK with your API key
  final sdk = WetroCloud(apiKey: 'wtc-sk-c3eec76c0106e3480a0d1b7e1574505cef66975f');

  try {
    // Attempt to create a new collection with a custom ID
    final response = await sdk.createCollection();
    
    // Print the result: Collection ID and success status
    print('Created collection: ${response.collectionId}, success: ${response.success}');
  } catch (e) {
    // If an error occurs, print the error message
    print('Error: $e');
  }
}
