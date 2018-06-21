# Go Package Manager Demo
这是一个基础构建Go项目并进行包管理的demo，包含以下几项功能
* 引用项目中package时，不需要通过相对路径或者绝对路径，而是使用github.com/组织名称或用户名/项目名称/... 来引用。在本项目中时会自动引用本地资源
* 执行`make all ` 即可完成对所有外部依赖以及内部构建的工作

## 结构说明
* `build`下包含`_workspace`文件夹，在make all 脚本中会被临时设置`GOPATH`,所有外部引用和内部的package都会安转在这个目录下

* 为了统一github上的路径，需要修改 `build/env.sh` 中的 `organizetion` 和 `project` 分别是组织名称和项目名称  

## 编译
只需要`make all` 目录下会生成可执行文件
