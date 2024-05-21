//
//  RegisterView.swift
//  UniLink
//
//  Created by Annie Fanelli on 5/16/24.
//

import SwiftUI

struct RegisterView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var major = ""
    @State var year = ""
    
    var body: some View {
        VStack {
            Text("Create your account")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            Form {
                Text("First Name")
                TextField("", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                Text("Last Name")
                SecureField("", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                Text("College Email")
                SecureField("", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                Text("Create Password")
                SecureField("", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                Text("Major")
                SecureField("", text: $major)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                Text("Year")
                SecureField("", text: $year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SubmitButton(title: "Next", background: .green) {
                    // action
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    RegisterView()
}
