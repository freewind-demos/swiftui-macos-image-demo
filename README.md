# SwiftUI macOS Image 图片显示

## 简介

演示 SwiftUI 中 Image 的用法，包括 SF Symbols 和图片处理。

## 快速开始

```bash
cd swiftui-macos-image-demo
xcodegen generate
open SwiftUIImageDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### SF Symbols 系统图标

```swift
Image(systemName: "star.fill")
    .font(.largeTitle)
    .foregroundColor(.yellow)
```

### 加载图片

```swift
Image("myImage")  // Assets.xcassets 中的图片
Image(uiImage: UIImage())  // UIImage 转 SwiftUI Image
```

### 调整大小

```swift
Image(systemName: "star")
    .resizable()           // 可调整大小
    .frame(width: 100, height: 100)
```

### 填充模式

```swift
.aspectRatio(contentMode: .fit)   // 适应
.aspectRatio(contentMode: .fill)  // 填充
.clipped()                          // 裁剪超出部分
```

## 完整示例

```swift
struct ContentView: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .shadow(radius: 5)
    }
}
```

## 完整讲解（中文）

### SF Symbols

- 苹果提供的免费图标库
- macOS 11+ 可用
- 6000+ 图标
- 使用 `Image(systemName:)` 调用

### clipShape

- `.clipShape(Circle())` - 圆形裁剪
- `.clipShape(RoundedRectangle(...))` - 圆角矩形
- `.clipShape(Ellipse())` - 椭圆形
