import 'package:flutter/material.dart';
import './myFont.dart';

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
          padding: const EdgeInsets.all(10),
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
              LocalImage(),
              SizedBox(height: 20),
              MyIcon(),
              SizedBox(height: 20),
              MyListView(),
              SizedBox(height: 20),
              MyListView2(),
              SizedBox(height: 20),
              MyListView3(),
              SizedBox(height: 20),
              MyListView4(),
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
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.asset("images/kunkun01.jpg", fit: BoxFit.cover),
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // 垂直居中
      children: [
        // 第一行图标
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // 水平居中
          children: const [
            Icon(Icons.home, size: 40, color: Colors.red),
            Icon(Icons.settings, size: 40, color: Colors.purple),
            Icon(Icons.search, size: 40, color: Colors.yellow),
            Icon(Icons.personal_injury_outlined, size: 40, color: Colors.blue),
            Icon(Icons.category, size: 40, color: Colors.green),
          ],
        ),

        const SizedBox(height: 20), // 两行之间的间距
        // 第二行图标
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(MyFont.book, size: 40, color: Colors.orange),
            Icon(MyFont.weixin, size: 40, color: Colors.green),
            Icon(MyFont.cart, size: 40, color: Colors.black),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(MyFont.user, size: 40, color: Colors.orange),
            Icon(MyFont.address, size: 40, color: Colors.green),
            Icon(MyFont.category, size: 40, color: Colors.black),
          ],
        ),
      ],
    );
  }
}

// 垂直列表
class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true, // 让ListView只占用实际高度
      physics: NeverScrollableScrollPhysics(), // 禁用内部滚动（外层已滚动）
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red),
          title: Text("全部订单"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green),
          title: Text("待付款"),
        ),
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange),
          title: Text("待收货"),
        ),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen),
          title: Text("我的收藏"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people, color: Colors.black54),
          title: Text("在线客服"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
      ],
    );
  }
}

// 垂直图文列表
class MyListView2 extends StatelessWidget {
  const MyListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true, // 让ListView只占用实际高度
      physics: NeverScrollableScrollPhysics(), // 禁用内部滚动（外层已滚动）
      children: <Widget>[
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text('华北黄淮高温雨今起强势登场'),
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/2.png"),
          title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
          subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温"),
        ),
        const Divider(),
        ListTile(
          title: const Text('华北黄淮高温雨今起强势登场'),
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          trailing: Image.network(
            "https://www.itying.com/images/flutter/3.png",
          ),
        ),
        const Divider(),
      ],
    );
  }
}

// 垂直图文列表2
class MyListView3 extends StatelessWidget {
  const MyListView3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true, // 让ListView只占用实际高度
      physics: NeverScrollableScrollPhysics(), // 禁用内部滚动（外层已滚动）
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ],
    );
  }
}

// 垂直图文列表2
class MyListView4 extends StatelessWidget {
  const MyListView4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        shrinkWrap: true, // 让ListView只占用实际高度
        physics:
            const ClampingScrollPhysics(), // 在嵌套滚动（比如外层 SingleChildScrollView 垂直滚动，内层水平滚动）时，可以让内层 ListView 正常响应水平滑动手势。
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.red),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Image.network("https://www.itying.com/images/flutter/1.png", fit: BoxFit.cover),
                ),
                const Text("文字")
              ],
            ),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
