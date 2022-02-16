//
//  ContentView.swift
//  loginui
//
//  Created by Bornak Paul (Work) on 16/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("primaryColor"))
            .cornerRadius(50)
    }
}

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea(.all)
            VStack{
                Spacer()
                Image("onboard")
                    .resizable()
                    .scaledToFit()
                Spacer()
                PrimaryButton(title: "Get Started")
                Text("Sign In")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("primaryColor"))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.25), radius: 60, x: 0.0, y: 0.0)
                    .padding(.vertical)
                
                HStack{
                    Text("New around here? ")
                    Text("SignIn")
                        .foregroundColor(Color("primaryColor"))
                }
                
            }
            .padding()
        }
    }
}
