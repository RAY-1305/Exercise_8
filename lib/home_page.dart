import 'package:flutter/material.dart';
import 'avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My AppBar'),
        ),
      ),
      body: const AvatarWidget(
        name: 'Hoanganhquy',
        phone: '0944556692',
        avartarUrl: 'https://zpsocial-f50-org.zadn.vn/e27dc4ec441aaa44f30b.jpg',
        isUpload: true,
      ),
    );
  }
}
