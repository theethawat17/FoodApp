// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'page7.dart'; // Import Page4

class Page6 extends StatelessWidget {
  final String title;

  const Page6({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=feQLHFOzfnU');
    if (!await launchUrl(youtubeUrl)) {
      throw Exception('Could not launch $youtubeUrl');
    } 
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => Page7(title: 'ชาเขียว'),
              ),
            );
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ชื่ออาหาร
                const Text(
                  'โกโก้',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // ภาพอาหาร
                Image.asset(
                  'imge/โกโก้.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),

                // คำอธิบายอาหาร
                Text(
                  'โกโก้  เป็นไม้ไม่ผลัดใบขนาดเล็กในวงศ์ชบา และเป็นพืชพื้นเมืองในเขตร้อนชื้นของอเมริกากลางและอเมริกาใต้ เมล็ดโกโก้มักนำมาใช้ทำเป็นของหวาน เช่น กานัช, ช็อกโกแลต ฯลฯ',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // ปุ่มถูกใจและไม่ถูกใจ
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // โค้ดเมื่อกดปุ่มถูกใจ
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('คุณชอบอาหารนี้!')),
                        );
                      },
                      icon: const Icon(Icons.thumb_up),
                      label: const Text('ถูกใจ'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // สีเขียว
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        // โค้ดเมื่อกดปุ่มไม่ถูกใจ
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('คุณไม่ชอบอาหารนี้!')),
                        );
                      },
                      icon: const Icon(Icons.thumb_down),
                      label: const Text('ไม่ถูกใจ'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // สีแดง
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // ปุ่มกลับไปที่หน้า 1 และปุ่มลิงก์ YouTube
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('กลับไปที่หน้า 1'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // สีฟ้า
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      onPressed: _launchYouTube,
                      icon: const Icon(Icons.video_library),
                      label: const Text('ไปที่ YouTube'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange, // สีส้ม
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
