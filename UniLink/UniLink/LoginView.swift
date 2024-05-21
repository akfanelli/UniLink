//
//  LoginView.swift
//  UniLink
//
//  Created by Annie Fanelli on 5/16/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("LogoName")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .padding(.top, 30)
                    .padding(.bottom, 40)
                
                Form {
                    Text("College Email Address")
                    TextField("", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    Text("Password")
                    SecureField("", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    SubmitButton(title: "Login", background: .green) {
                        // action
                    }
                    .padding()
                    
                    Button("Forgot Password? Click Here") {
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .scrollContentBackground(.hidden)
                
                NavigationLink("Create Account", destination: RegisterView())
                    .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
