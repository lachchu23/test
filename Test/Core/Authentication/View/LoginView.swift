//
//  LoginView.swift
//  Test
//
//  Created by Luxshika Uthayakumar on 2023-09-26.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                //image if required
                
                
                //form field
                VStack(spacing: 24){
                    InputView(text: $email,
                              title: "Email address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //sign in button
                Button {
                    print("Log user in..")
                }label: {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.bold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 250, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(30)
                .padding(.top, 24)
                
                Spacer()
                
                Button {
                    print("Log user in..")
                }label: {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("SIGN IN WITH APPLE")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(.black)
                .cornerRadius(30)
                .padding(.top, 24)
                
                //sign up button
                NavigationLink{
                    SignupView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign up !")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
