
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var login = PostViewModel()
    var body: some View {
        VStack {
            Text("Hola")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
