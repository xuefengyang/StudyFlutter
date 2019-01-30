import 'package:flutter/material.dart';

class ImageFromNetWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片"),
      ),
      body: Container(
        child: Center(
          child: Image.network(
              'https://wx2.sinaimg.cn/mw690/007zFDn6ly1fzohgfn95dj30u039s1kx.jpg',
              color: Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate),
        ),
      ),
    );
  }
}
