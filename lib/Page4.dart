import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'page5.dart'; // Import Page4

class Page4 extends StatelessWidget {
  final String title;

  const Page4({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=fXpUn1uP84s') ;
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
              builder: (context) => Page5(title: 'ก๋วยเตี๋ยว'),
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
                  'ไก่ทอด',
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
                  'imge/ไก่ทอด.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),

                // คำอธิบายอาหาร
                Text(
                  'ไก่ทอด  เป็นอาหารอย่างง่ายทำจากเนื้อไก่ นำไปคลุกกับแป้งและส่วนผสมอื่น ๆ จากนั้นนำไปทอด อาจด้วยวิธีการทอดน้ำมันท่วม น้ำมันน้อย หรือการทอดด้วยความดัน ผิวนอกของไก่ทอดจะกรอบ ส่วนของไก่ที่นำมาทำไก่ทอดอาจเป็นน่อง ปีก อก หรือเนื้อไก่ที่หั่นเป็นชิ้น ๆ อาจมีหนัง มีกระดูกหรือเลาะกระดูกออกก่อน (เป็นไก่ไม่มีกระดูก) รูปแบบของไก่ทอดนั้นไม่ตายตัว โดยขึ้นอยู่กับสูตร ส่วนผสม และกรรมวิธีการปรุง',
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
