// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Page3.dart'; // Import Page3

class Page2 extends StatelessWidget {
  final String title;

  const Page2({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=tF196vSo-oQ');
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
              builder: (context) => Page3(title: 'ข้าวพัดกุ้ง'),
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
                const Text(
                  'ข้าวมันไก่',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'imge/ข้าวมันไก่.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Text(
                  'ข้าวมันไก่ เป็นอาหารคาวดั้งเดิมของชาวจีน อาหารชนิดนี้ได้รับการเผยแพร่มาจากชาวจีนไหหลำหรือไห่หนานที่มาอยู่ประเทศไทย...',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('คุณชอบอาหารนี้!')),
                        );
                      },
                      icon: const Icon(Icons.thumb_up),
                      label: const Text('ถูกใจ'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('คุณไม่ชอบอาหารนี้!')),
                        );
                      },
                      icon: const Icon(Icons.thumb_down),
                      label: const Text('ไม่ถูกใจ'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('กลับไปที่หน้า 1'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      onPressed: _launchYouTube,
                      icon: const Icon(Icons.video_library),
                      label: const Text('ไปที่ YouTube'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
  }
}
