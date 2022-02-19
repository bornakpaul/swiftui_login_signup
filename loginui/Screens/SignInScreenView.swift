//
//  SignInScreenView.swift
//  loginui
//
//  Created by Bornak Paul (Work) on 18/02/22.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = "" // by default its empty
    var body: some View {
            ZStack {
                Color(.white).ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    VStack {
                        
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"), textColor: Color.black)
                        
                        SocialLoginButton(image: Image("google"), text: Text("Sign in with Google"), textColor: Color("primaryColor"))
                            .padding(.vertical)
                        
                        Text("or get a link emailed to you")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        TextField("Work email address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.25), radius: 60, x: 0.0, y: 0.0)
                            .padding(.vertical)
                        
                        PrimaryButton(title: "Email me a signup link")
                        
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    
                    Text("You are completely safe.")
                        .font(.title3)
                    
                    Text("Read our Terms & Conditions.")
                        .font(.title3)
                        .foregroundColor(Color("primaryColor"))
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    
    }


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    var textColor: Color
    var body: some View {
        HStack{
            image
                .resizable()
                .frame(width: 35, height:35)
            Spacer()
            text
                .font(.title2)
                .foregroundColor(textColor)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.25), radius: 60, x: 0.0, y: 0.0)
    }
}
