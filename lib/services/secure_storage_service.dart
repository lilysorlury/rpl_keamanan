import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Service pembungkus [FlutterSecureStorage] (dari pertemuan sebelumnya).
///
/// Dipakai untuk menyimpan data sensitif seperti token secara terenkripsi.
class SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService({FlutterSecureStorage? storage})
    : _storage = storage ?? const FlutterSecureStorage();

  /// Menyimpan [value] dengan kunci [key].
  Future<void> write(String key, String value) {
    return _storage.write(key: key, value: value);
  }

  /// Membaca nilai berdasarkan [key]. Mengembalikan `null` jika tidak ada.
  Future<String?> read(String key) {
    return _storage.read(key: key);
  }

  /// Menghapus nilai berdasarkan [key].
  Future<void> delete(String key) {
    return _storage.delete(key: key);
  }

  /// Menghapus semua data yang tersimpan.
  Future<void> clearAll() {
    return _storage.deleteAll();
  }
}
