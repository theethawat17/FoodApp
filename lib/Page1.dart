
// ignore_for_file: file_names



class Page1 extends StatelessWidget {
  final String title;

  const Page1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // ดัน Footer ไปด้านล่าง
        children: [
          // ส่วนเนื้อหาหลัก
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // แถวแรก (Page2 และ Page4)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'imge/ข้าวมันไก่.png', // URL รูปภาพ
                          width: 150,
                          height: 150,
                        ),
                        const SizedBox(height: 10), // เว้นช่องว่างระหว่างรูปภาพกับปุ่ม
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/page2');
                          },
                          child: const Text('ข้าวมันไก่'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'imge/ไก่ทอด.png', // URL รูปภาพ
                          width: 100,
                          height: 120,
                        ),
                        const SizedBox(height: 10), // เว้นช่องว่างระหว่างรูปภาพกับปุ่ม
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/page4');
                          },
                          child: const Text('ไก่ทอด'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20), // เว้นช่องว่างระหว่างแถวแรกและแถวที่สอง
                // แถวที่สอง (Page3 และ Page5)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'imge/kung.png', // URL รูปภาพ
                          width: 150,
                          height: 150,
                        ),
                        const SizedBox(height: 10), // เว้นช่องว่างระหว่างรูปภาพกับปุ่ม
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/page3');
                          },
                          child: const Text('ข้าวพัดกุ้ง'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'imge/ก๋วยเตี๋ยว.png', // URL รูปภาพ
                          width: 150,
                          height: 150,
                        ),
                        const SizedBox(height: 10), // เว้นช่องว่างระหว่างรูปภาพกับปุ่ม
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/page5');
                          },
                          child: const Text('ก๋วยเตี๋ยว'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ส่วน Footer ด้านล่าง
          Container(
            color: Colors.grey[200], // พื้นหลังของ Container
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // จัดปุ่มให้เว้นระยะห่างเท่ากัน
              children: [
                // ปุ่มที่ 1
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page6');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.green,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'imge/โกโก้.png', // URL รูปภาพ
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(height: 5),
                      const Text('น้ำโกโก้'),
                    ],
                  ),
                ),
                // ปุ่มที่ 2
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page7');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'imge/ชาเขียว.png', // URL รูปภาพ
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(height: 5),
                      const Text('ชาเขียว'),
                    ],
                  ),
                ),
                // ปุ่มที่ 3
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page8');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.red,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'imge/มะพร้าว.png', // URL รูปภาพ
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(height: 5),
                      const Text('นมสดมะพร้าวปั่น'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Text('ของว่างที่ชอบ'),
        ],
      ),
    );
  }
}
