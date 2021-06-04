//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by Kareem Abdul Hafidzh on 31/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                //section Photo profil
                Section(){
                    NavigationLink(destination: About()) {
                        HStack{
                            Image("Anime Boy")
                                .resizable()
                                .frame(width:50, height:50)
                                .clipShape(Circle())
                            
                            //nama dan status
                            VStack(alignment:.leading){
                                Text("Aziz Yuwono").font(.headline)
                                Text("Code Enthusiast").font(.caption)
                            }
                        }
                        .padding(.top,10)
                        .padding(.bottom,10)
                    }
                }
                
                //section pengaturan umum
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width:35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Pesan Berbintang")
                        }
                    }
                    
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width:35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Whatsapp Web/Deksstop")
                        }
                    }
                }
                
                
                //section pengaturan umum
                Section(header: Text("Pengaturan Akun")){
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width:35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Akun")
                        }
                    }
                    
                    NavigationLink(destination: About()) {
                        HStack(spacing:20){
                            Image(systemName: "phone.circle")
                                .frame(width:35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Chat")
                        }
                    }
                }
                
                
                
            }.navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct About : View {
    var body : some View {
        Text("Halaman About")
    }
}
