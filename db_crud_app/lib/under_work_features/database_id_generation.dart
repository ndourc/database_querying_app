import 'dart:math';

String generateRandomDatabaseID() {
  final alphanumericCharacters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final specialCharacters = 'ISTNZ';

  String randomID = '';
  final random = Random();

  // Generate X and Y characters alternately
  for (int i = 0; i < 11; i++) {
    if (i % 2 == 0) {
      // Add X character
      randomID += alphanumericCharacters[random.nextInt(alphanumericCharacters.length)];
    } else {
      // Add Y character
      randomID += specialCharacters[random.nextInt(specialCharacters.length)];
    }
  }

  return randomID;
}

void main() {
  final randomID = generateRandomDatabaseID();
  print('Random Database ID: $randomID');
}
