import 'package:flutter/material.dart';

// 无状态StatelessWidget
/*
直接进入主题，下方代码是无状态 Widget 的简单实现。
继承 StatelessWidget，通过 build 方法返回一个布局好的控件。可能现在你还对 Flutter 的内置控件不熟悉，but Don't worry , take it easy ，后面我们就会详细介绍。这里你只需要知道，一个无状态的 Widget 就是这么简单。
Widget 和 Widget 之间通过 child: 进行嵌套。其中有的 Widget 只能有一个 child，比如下方的 Container ；有的 Widget 可以多个 child ，也就是children:，比如` Column 布局。下方代码便是 Container Widget 嵌套了 Text Widget。
*/
class DEMOWidget extends StatelessWidget {
  final String text;

  //数据可以通过构造方法传递进来
  DEMOWidget(this.text);

  @override
  Widget build(BuildContext context) {
    //这里返回你需要的控件
    //这里末尾有没有的逗号，对于格式化代码而已是不一样的。
    return Container(
      //白色背景
      color: Colors.white,
      //Dart语法中，?? 表示如果text为空，就返回尾号后的内容。
      child: Text(text ?? "这就是无状态DMEO"),
    );
  }
}
