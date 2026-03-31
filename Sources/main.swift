import Cocoa

@main
struct ImageApp: App {
    var body: some Scene {
        Window("Image 图片显示", id: "main") {
            ContentView()
        }
        .defaultSize(width: 500, height: 550)
    }
}
