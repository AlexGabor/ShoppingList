//
//  ContentView.swift
//  shoppinglist
//
//  Created by Alexandru Gabor on 07.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Image("ic_header")
                .resizable()
                .scaledToFit()
            
            Image("icon_authentication")
            
            Text("\"The place where shopping is\non a another level.\"")
                .multilineTextAlignment(.center)
            
            TextField("Email", text: $email)
                .prefixedWithIcon(named: "icon_email")
                .padding(EdgeInsets(top: 32, leading: 32, bottom: 16, trailing: 32))
            TextField("Password", text: $password)
                .prefixedWithIcon(named: "icon_password")
                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
            
            Spacer()
            
            HStack {
                Text("Don't have an account?")
                Text("Sign up")
            }
            Button("Log in") {
                
            }.appButton()
                .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
        }.frame(maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
            
        
    }
}

extension View {
    func prefixedWithIcon(named name: String) -> some View {
        HStack(alignment: .center) {
            Image(name)
            VStack {
                self
                Divider()
            }
        }
    }
}

extension Button {
    func appButton() -> some View {
        HStack {
            Spacer()
            self.padding()
                .foregroundColor(Color.white)
            Spacer()
        }.background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 32))
            .shadow(color: Color.blue, radius: 4, x: 0, y: 4)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
