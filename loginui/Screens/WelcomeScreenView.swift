//
//  WelcomeScreenView.swift
//  loginui
//
//  Created by Bornak Paul (Work) on 18/02/22.
//

import SwiftUI

struct WelcomeScreenView: View {
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
                NavigationLink(destination: SignInScreenView(),
                               label: {
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
                })
                
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


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
