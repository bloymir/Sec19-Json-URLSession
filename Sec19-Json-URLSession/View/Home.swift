//
//  Home.swift
//  Sec19-Json-URLSession
//
//  Created by nelson tapia on 30-08-23.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    var body: some View {
        NavigationView {
            Text("Bienvenido")
                .navigationTitle("Json")
                .navigationBarItems(leading:
                                        Button(action:{
                    UserDefaults.standard.removeObject(forKey: "sesion")
                    login.auth = 0
                }){
                    Text("Salir")
                }
                                        , trailing:
                                        Button(action:{
                    
                }){
                    Text("Siguiente")
                }
                )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
