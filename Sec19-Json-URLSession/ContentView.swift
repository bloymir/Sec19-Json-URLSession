
import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login : PostViewModel
    var body: some View {
        Group{
            if login.auth == 0 {
                Login()
            } else if login.auth == 1 {
                Home()
            } else if login.auth == 2{
                VStack{
                    Text("Usuario y/o Contraseña incorrectos")
                    Button(action:{
                        login.auth = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}


