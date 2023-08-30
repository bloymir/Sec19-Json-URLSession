
import SwiftUI

@main
struct Sec19_Json_URLSessionApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
