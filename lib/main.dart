/* Tạo 1 widget có tên Avatar, có các tham số sau:

final String name;
final String? avartarUrl;
final bool isUpload = false;

Trong trường hợp có avatarUrl thì hiển thị hình ảnh từ network.
Trong trường hợp không có avarUrl, lấy kí tự đầu tiên của name, uppercase và hiện thị.
trong trường hợp load ảnh từ avartaUrl lỗi, thì hiện thị kí tự đầu tiên của name, uppercase và hiện thị.
Trong trường hợp isUpload = false thì ẩn icon upload đi.

Sử dụng AvatarWidget trên để tạo giao diện như hình */

import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
