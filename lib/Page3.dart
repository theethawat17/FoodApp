import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'page4.dart'; // Import Page4

class Page3 extends StatelessWidget {
  final String title;

  const Page3({super.key, required this.title});

  // ฟังก์ชันสำหรับเปิด URL
  void _launchYouTube() async {
    final Uri youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=5HGBfuGjV0s') ;
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
              builder: (context) => Page4(title: 'ไก่ทอด'),
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
                  'ข้าวผัดกุ้ง',
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
                  'imge/kung.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),

                // คำอธิบายอาหาร
                Text(
                  'ข้าวผัด เป็นอาหารไทยประเภทข้าวผัด เป็นการนำข้าวสวยลงไปผัดคลุกกับซอส น้ำพริก หรือเครื่องปรุงรสต่าง ๆ เพื่อให้ได้รสชาติ เช่น ซอสมะเขือเทศ, ซอสพริก, ซีอิ๊วดำ, ซอสถั่วเหลือง หรือน้ำพริกชนิดต่าง ๆ และมีการใส่เนื้อสัตว์ชนิดต่าง ๆ ลงไป เช่น หมู, ไก่, ปลาหมึก, ปู, กุ้ง หรือมันกุ้ง แหนม เป็นต้น โดยเรียกชื่อข้าวผัดชนิดนั้น ๆ ตามชื่อเนื้อสัตว์ที่ใส่ลงไป เช่น ข้าวผัดหมู, ข้าวผัดกุ้ง, ข้าวผัดปู, ข้าวผัดไก่, ข้าวผัดไข่ รวมถึงผักอย่างอื่นที่ใช้เป็นส่วนผสมด้วย เช่น ข้าวผัดกะเพรา, ข้าวผัดสับปะรด, ข้าวผัดเจ หรือข้าวผัดรถไฟ ที่เป็นข้าวผัดที่ปรุงขึ้นมาเพื่อขายบนรถไฟโดยเฉพาะ มีประวัติความเป็นมาตั้งแต่การเดินทางด้วยรถไฟได้รับความนิยมในยุคเริ่มแรกโดยเฉพาะรถไฟสายใต้',
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
