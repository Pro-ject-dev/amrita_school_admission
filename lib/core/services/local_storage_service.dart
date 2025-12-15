import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalStorageService {
  final FlutterSecureStorage _storage;

  LocalStorageService(this._storage);

  static const String _keyMobileNumber = 'mobile_number';
  static const String _keyIsLoggedIn = 'is_logged_in';

  Future<void> saveLoginData(String mobileNumber) async {
    await _storage.write(key: _keyMobileNumber, value: mobileNumber);
    await _storage.write(key: _keyIsLoggedIn, value: 'true');
  }

  Future<String?> getMobileNumber() async {
    return await _storage.read(key: _keyMobileNumber);
  }

  Future<bool> isLoggedIn() async {
    final value = await _storage.read(key: _keyIsLoggedIn);
    return value == 'true';
  }

  Future<void> clearLoginData() async {
    await _storage.delete(key: _keyMobileNumber);
    await _storage.delete(key: _keyIsLoggedIn);
  }
}

final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService(const FlutterSecureStorage());
});
