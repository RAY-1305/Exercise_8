import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String name;
  final String? avartarUrl;
  final String? phone;
  final bool isUpload;
  const AvatarWidget({
    super.key,
    required this.name,
    this.avartarUrl,
    this.phone,
    this.isUpload = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 400,
        color: Colors.grey[200],
        child: Stack(
          children: [
            if (phone != null)
              Positioned(
                bottom: 5,
                left: 120,
                child: SizedBox(
                  width: 350,
                  height: 80,
                  child: Text(
                    phone!,
                    style: const TextStyle(fontSize: 45),
                  ),
                ),
              ),
            Positioned(
              top: 50,
              left: 130,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    if (avartarUrl != null)
                      Center(
                        child: ClipOval(
                          child: Image.network(
                            avartarUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Text(
                                  name[0].toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 150,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    if (avartarUrl == null)
                      Center(
                        child: Text(
                          name[0].toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 150,
                          ),
                        ),
                      ),
                    if (isUpload)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.file_upload_outlined,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
