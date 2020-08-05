//
//  LoginView.swift
//  100DaysOfSwiftUI
//
//  Created by Punde, Rasika Nanasaheb on 05/08/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var showErrorAlert: Bool = false

    var body: some View {
        VStack(alignment: .center) {
                    Image("swiftui")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 74.0, height: 74.0)

                    Text("Login")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.green)

                    Text("Login to get started with SwiftUI tutorials")
                        .bold()
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                        .padding(20)

                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10.0)
                        .padding(.bottom, 15)

                    SecureField("Password", text: $password) {
                        // submit the password
                    }
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10.0)
                    .padding(.bottom, 10)

                    HStack() {
                        Spacer()
                        Text("Forgot Password?")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 40)

                    Button(action: { self.loginButtonAction() }) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.green)
                    .cornerRadius(15.0)
            }.padding()


        .alert(isPresented: $showErrorAlert) { () -> Alert in
            Alert(title: Text(""),
                  message: Text("Invalid email or password"),
                  dismissButton: .default(Text("Ok")))
        }
    }

    /// Check for valid inputs
    private func loginButtonAction() {
        if email.isValidEmail() && password.isValidPassword() {
            // Login to view
        } else {
            self.showErrorAlert = true
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
