// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct ProfileView: View {
    public init() {
        
    }
   public var body: some View {
        NavigationStack {
            ZStack {
                Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image("profileImage", bundle: .module)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .shadow(radius: 10)
                                .frame(width: 280, height: 280)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name").font(.title3).bold().foregroundColor(.white)
                            Text("Enrico Maricar").font(.subheadline).foregroundColor(.white)
                            
                            Text("Email").font(.title3).bold().padding(.top, 8).foregroundColor(.white)
                            Text("enrico.maricar@gmail.com").font(.subheadline)
                            
                        }
                        Spacer()
                    }.padding()
                    
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.navigationTitle("Profile")
    }
}
