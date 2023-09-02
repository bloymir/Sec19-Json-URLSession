//
//  DetalleView.swift
//  Sec19-Json-URLSession
//
//  Created by nelson tapia on 30-08-23.
//

import SwiftUI



struct DetalleView: View {
    
    @StateObject var user = DetalleViewModel()
    var id: Int
    var body: some View {
        
        VStack{
            if user.avatar.isEmpty {
                ProgressView()
            }else {
//                Image(systemName: "persona.fill")
//                    .data(url: URL(string: user.avatar)!)
                AsyncImage(url: URL(string: user.avatar))
                    .frame(width: 80, height: 80)
                    .clipped()
                    .clipShape(Circle())
                
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
        }.onAppear{
            user.fetch(id: id)
        }
    }
}

