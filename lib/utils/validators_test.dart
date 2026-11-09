import 'package:flutter_test/flutter_test.dart';
import 'package:rpl_keamanan/utils/validators.dart';

void main() {
  group('Validators Unit Test', () {
    // Test validasi email
    group('isValidEmail()', () {
      test('Email valid', () {
        expect(Validators.isValidEmail('sisilya@gmail.com'), true);
      });

      test('Email tanpa @', () {
        expect(Validators.isValidEmail('sisilyagmail.com'), false);
      });

      test('Email tanpa domain', () {
        expect(Validators.isValidEmail('sisilya@'), false);
      });

      test('Email kosong', () {
        expect(Validators.isValidEmail(''), false);
      });
    });

    // Test sanitize
    group('sanitize()', () {
      test('Menghapus tag HTML', () {
        expect(Validators.sanitize('<b>Hello</b>'), 'Hello');
      });

      test('Menghapus script berbahaya', () {
        expect(
          Validators.sanitize('<script>alert("XSS")</script>Hello'),
          'Hello',
        );
      });

      test('Menghapus javascript:', () {
        expect(Validators.sanitize('javascript:alert(1)'), 'alert(1)');
      });

      test('Menghapus spasi di awal dan akhir', () {
        expect(Validators.sanitize('  Hello  '), 'Hello');
      });
    });

    // Test validasi panjang teks
    group('validateText()', () {
      test('Teks dengan panjang valid', () {
        expect(Validators.validateText('Sisilya'), null);
      });

      test('Teks terlalu pendek', () {
        expect(Validators.validateText('Hi'), 'Teks minimal 3 karakter');
      });

      test('Teks terlalu panjang', () {
        expect(
          Validators.validateText(List.filled(51, 'A').join()),
          'Teks maksimal 50 karakter',
        );
      });

      test('Teks kosong', () {
        expect(Validators.validateText(''), 'Teks tidak boleh kosong');
      });

      test('Teks null', () {
        expect(Validators.validateText(null), 'Teks tidak boleh kosong');
      });
    });
  });
}
