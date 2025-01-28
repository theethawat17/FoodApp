// ignore_for_file: file_names

import 'package:flutter/material.dart';
 import 'package:url_launcher/url_launcher.dart';

class Page8 extends StatelessWidget {
  final String title;

  const Page8({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=YpURrxgN-o0');
    if (!await launchUrl(youtubeUrl)) {
      throw Exception('Could not launch $youtubeUrl');
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                  'มะพร้าวนมสดปั่น',
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
                  'imge/มะพร้าว.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),

                // คำอธิบายอาหาร
                Text(
                  'มะพร้าว เป็นพืชยืนต้นชนิดหนึ่ง อยู่ในวงศ์ปาล์มโดยทั้วไปเติบโตได้ดีในชายฝั่งเขตร้อนและยังเป็นพืชเศรษฐกิจในหลายประเทศเนื่องจากมีการใช้ประโยชน์ได้ในหลายอย่าง เช่น น้ำและเนื้อมะพร้าวอ่อนใช้ทำอาหารหรือรับประทาน ทำสิ่งประดิษฐ์สิ่งของต่างๆ นอกจากนี้มะพร้าวยังมีความสัมพันธ์กับวิถีชีวิตของผู้คนในหลายวัฒนธรรม',
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
