import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // SF Symbols 系统图标
                Text("SF Symbols 系统图标")
                    .font(.headline)

                HStack(spacing: 20) {
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    Image(systemName: "house.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }

                Divider()

                // 图片缩放
                Text("图片缩放")
                    .font(.headline)

                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("50x50")
                            .font(.caption)
                    }

                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                        Text("80x80")
                            .font(.caption)
                    }

                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 120, height: 120)
                        Text("120x120")
                            .font(.caption)
                    }
                }

                Divider()

                // 图片填充模式
                Text("填充模式 (.aspectRatio)")
                    .font(.headline)

                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fit)
                            .border(Color.gray)
                        Text("fit")
                            .font(.caption)
                    }

                    VStack {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .aspectRatio(contentMode: .fill)
                            .border(Color.gray)
                            .clipped()
                        Text("fill")
                            .font(.caption)
                    }
                }

                Divider()

                // 圆角图片
                Text("圆角和裁剪")
                    .font(.headline)

                HStack(spacing: 20) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())

                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                Divider()

                // 颜色叠加
                Text("颜色和样式")
                    .font(.headline)

                HStack(spacing: 20) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.yellow)
                        .shadow(color: .orange, radius: 3)

                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .pink],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
            }
            .padding(30)
        }
    }
}
