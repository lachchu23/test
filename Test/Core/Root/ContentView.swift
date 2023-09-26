//
//  ContentView.swift
//  Test
//
//  Created by Luxshika Uthayakumar on 2023-09-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "stethoscope")
                    .imageScale(.large)
                    .foregroundColor(.green)
                
                Text("Time to be active !")
                    .foregroundColor(Color("ButtonColor"))
                    .bold()
                    .padding()
                
                // Get Started Button
                NavigationLink(
                    destination: LoginView(),// Navigate to the WelcomeView when the button is tapped
                    
                    label: {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(30)
                            .padding(.top, 100)
                    }
                )
                .navigationViewStyle(StackNavigationViewStyle()) // Use stack navigation view style
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
