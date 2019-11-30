# flutter_playerground

注意！用vscode 吧  android studio 问题太多了  根本启动不了！！

## install
https://github.com/flutter/flutter/issues/14050
[Let flutter be installable via homebrew · Issue #14050 · flutter/flutter · GitHub](https://github.com/flutter/flutter/issues/14050)
```
brew tap spectralkh/tap
brew cask install flutter
flutter upgrade

```


## vscode flutter 一点小坑
Vscode 首先需要安装 flutter 扩展

Cmd + P 搜flutter 有相关命令
比如create project
搜 Dart 可以看到dev tools
[Install and run DevTools from VS Code  - Flutter](https://flutter.dev/docs/development/tools/devtools/vscode)




vscode flutter 默认支持HotReload

如果右下角Device 是no device 
先看看adb devices 有木有 （这个命令即使是AVD中的device 也可以列出）
再用 flutter doctor 看看有木有devices
如果有的话  我是 reload vs 窗口就看到device了
