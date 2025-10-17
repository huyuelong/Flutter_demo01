import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "你好Flutter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple.shade300,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              MyApp(),
              MyButton(),
              MyText(),
              MyImage(),
              Circular(),
              SizedBox(height: 20), // 垂直间距
              ClipImage(),
              SizedBox(height: 20),
              LocalImage()
            ],
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center, // 配置Container容器内元素的方位
        width: 200,
        height: 200,
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        // transform: Matrix4.translationValues(0, 40, 0), // 位移
        // transform: Matrix4.rotationZ(0.2), // 旋转
        transform: Matrix4.skewY(.2), // 偏移
        decoration: BoxDecoration(
          color: Colors.yellow, // 背景颜色
          border: Border.all(color: Colors.red, width: 2), // 边框
          borderRadius: BorderRadius.circular(10), // 配置圆角
          boxShadow: const [
            // 配置阴影效果
            BoxShadow(color: Colors.blue, blurRadius: 20.0),
          ],
          // LinearGradient背景线性渐变 RadialGradient径向渐变
          gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
        ),
        child: const Text(
          "你好Flutter",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10), // 四周margin
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      // padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text("按钮", style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Text(
        "你好我是flutter你好我是flutter你好我是flutter你好我是flutter你好我是flutter",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dashed,
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      height: 200,
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.network(
        // "https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png",
        "https://www.itying.com/themes/itying/images/ionic4.png",
        // alignment: Alignment.centerLeft,
        // scale: 2,
        // fit: BoxFit.cover,
        repeat: ImageRepeat.repeat,
      ),
    );
  }
}

// 实现圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: NetworkImage(
            "https://www.itying.com/themes/itying/images/ionic4.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// 实现圆形图片 使用 ClipOval
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://www.itying.com/themes/itying/images/ionic4.png",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

// 加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: Image.asset("images/kunkun01.jpg", fit: BoxFit.cover),
    );
  }
}
