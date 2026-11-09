import 'package:flutter/material.dart';

import 'user_list_screen.dart';
import 'post_list_screen.dart';

/// Halaman utama aplikasi.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPL & Keamanan Kode'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.security, size: 72, color: Colors.deepPurple),
              const SizedBox(height: 16),
              const Text(
                'Praktikum Pertemuan 6',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Repository pattern, .env, dan validasi input',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // Tombol daftar pengguna
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const UserListScreen()),
                  );
                },
                icon: const Icon(Icons.people),
                label: const Text('Lihat Daftar Pengguna'),
              ),

              const SizedBox(height: 12),

              // Tombol daftar postingan
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PostListScreen()),
                  );
                },
                icon: const Icon(Icons.article),
                label: const Text('Lihat Daftar Postingan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
