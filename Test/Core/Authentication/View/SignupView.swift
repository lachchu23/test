//
//  SignupView.swift
//  Test
//
//  Created by Luxshika Uthayakumar on 2023-09-26.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            VStack(spacing: 24){
                
                
                    InputView(text: $email,
                              title: "Email address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                
                    InputView(text: $fullName,
                              title: "Full Name",
                              placeholder: "Enter your full name")
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                
                    InputView(text: $confirmPassword,
                              title: "Confirm Password",
                              placeholder: "Confirm your password",
                              isSecureField: true)
                
                }
                .padding(.horizontal)
                .padding(.top, 12)
            
                //sign in button
                Button {
                    print("Sign user up..")
                }label: {
                    HStack {
                        Text("SIGN UP")
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
            
            Button{
                dismiss()
            }label: {
                HStack(spacing: 3){
                        Text("Already have an account?")
                        Text("Sign in !")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
            }
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
