//
//  Home.swift
//  Sec19-Json-URLSession
//
//  Created by nelson tapia on 30-08-23.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    @StateObject var json = Modelo1ViewModel()
    
    var body: some View {
        NavigationView {
            if json.datosModelo.isEmpty {
                ProgressView()
            } else {
                List(json.datosModelo, id:\.id) { item in
                    VStack(alignment: .leading){
                        Text(item.name).font(.body).bold()
                        Text(item.email)
                    }
                }
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
}

