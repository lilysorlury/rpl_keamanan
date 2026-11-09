class Validators {
  // Validasi email
  static bool isValidEmail(String email) {
    final regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    return regex.hasMatch(email);
  }

  // Membersihkan input berbahaya
  static String sanitize(String input) {
    return input
        .replaceAll(
          RegExp(
            r'<script\b[^>]*>.*?</script>',
            caseSensitive: false,
            dotAll: true,
          ),
          '',
        )
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll(RegExp(r'javascript:', caseSensitive: false), '')
        .trim();
  }

  // Validasi panjang teks
  static String? validateText(
    String? text, {
    int minLength = 3,
    int maxLength = 50,
  }) {
    if (text == null || text.trim().isEmpty) {
      return 'Teks tidak boleh kosong';
    }

    if (text.trim().length < minLength) {
      return 'Teks minimal $minLength karakter';
    }

    if (text.trim().length > maxLength) {
      return 'Teks maksimal $maxLength karakter';
    }

    return null;
  }
}
