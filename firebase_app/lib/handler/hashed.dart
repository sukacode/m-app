import 'dart:convert';
import 'package:crypto/crypto.dart';

String _password = "";

// Function to hash the password using SHA-256
String hashPassword() {
  var bytes = utf8.encode(_password); // Convert the password to bytes
  var digest = sha256.convert(bytes); // Calculate the SHA-256 hash
  return digest.toString(); // Convert the hash to a string
}
