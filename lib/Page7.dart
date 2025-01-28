// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'page8.dart'; // Import Page4

class Page7 extends StatelessWidget {
  final String title;

  const Page7({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=dKZobRKdq-4');
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
              builder: (context) => Page8(title: 'มะพร้าวนมสดปั่น'),
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
                  'ชาเขียว',
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
                  'imge/ชาเขียว.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),

                // คำอธิบายอาหาร
                Text(
                  'ชาเขียว เป็นชาที่เก็บเกี่ยวจากพืชในชนิด Camellia sinensis เช่นเดียวกับ ชาขาว ชาแดง และชาอูหลง ชาที่ไม่ผ่านการหมัก ซึ่งมีประโยชน์ต่อสุขภาพและมีคุณสมบัติในการต้านทานโรคได้นานาชนิดจึงเป็นที่นิยมของคนส่วนใหญ่ น้ำชาจะเป็นสีเขียวหรือเหลืองอมเขียว กลิ่นหอมอ่อนกว่าอูหลง ชาเขียวหลงจิ่งที่ราคาสูงที่สุด คือ ฉือเฟิ่งหลงจิ่ง ที่ชงจากใบ จะให้กลิ่นหอมอ่อน ๆ บ้างว่าคล้ายถั่วเขียว รสฝาดน้อย เซนฉะที่ชงจากใบมีกลิ่นอ่อน ๆ จนเข้มได้ขึ้นกับการคั่ว บางครั้งมีรสอุมามิจนถึงรสหวานที่รับรู้ได้เฉพาะบางคนเท่านั้น น้ำมันในตัวชาเขียวผ่านการกลั่นมีผลดีต่อร่างกาย ในประเทศไทยจะมีการแต่งกลิ่นเพื่อให้เกิดความน่ารับประทานมากขึ้น',
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
