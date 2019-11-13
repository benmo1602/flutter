<!--
 * @Description: Do not edit
 * @Author: caokunyu (caoky@novastar.tech)
 * @Date: 2019-11-11 19:47:28
 * @LastEditors: caokunyu
 * @LastEditTime: 2019-11-11 21:27:14
 -->
# my_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# 尝试 安装flutter sdk
```
  1. 下载
  https://flutter.cn/docs/development/tools/sdk/releases
  2. 解压
  cd ~/development
  unzip ~/Downloads/flutter_macos_v1.9.1+hotfix.6-stable.zip
  cd ../
  unzip ~/Downloads/flutter_macos_v1.9.1+hotfix.6-stable.zip
  3.  export PATH="$PATH:~/flutter/bin” 配置环境变量
  $ vim ~/.bash_profile
  $ source ~/.bash_profile
  $ echo $PATH // 查看环境变量
  $  which flutter
  $ flutter -h

  把  export PATH="$PATH:~/flutter/bin” 写入 .bash_profile 的最后一行

  4.   开发二进制文件预下载
  flutter precache

```

## 数据类型

  number int/ double
  string
  bool
  dynamic

initState ：初始化，理论上只有初始化一次，第二篇中会说特殊情况下。
didChangeDependencies：在 initState 之后调用，此时可以获取其他 State 。
dispose ：销毁，只会调用一次。
