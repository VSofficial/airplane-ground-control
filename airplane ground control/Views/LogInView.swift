//
//  LogInView.swift
//  airplane ground control
//
//  Created by Aditya Tyagi  on 07/03/23.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
let lightGreyColor2 = Color(red: 200.0/255.0, green: 203.0/255.0, blue: 204.0/255.0)

let storedUsername = "Aditya"
let storedPIN = "1234"



struct LoginView: View {
    
    @State var username: String = ""
    @State var PIN: String = ""
    
    @State var loginAccess = false
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack {
                HelloText()
                UserImage()
                UsernameTextField(username: $username)
                departmentTypeMenu()
                PasswordSecureField(PIN: $PIN)
                if authenticationDidFail {
                    Text("Information not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                
                
                Button(action: {
                    if self.username == storedUsername && self.PIN == storedPIN {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                    } else {
                        self.authenticationDidFail = true
                        self.authenticationDidSucceed = false
                    }
                }) {
                    LoginButtonContent()
                    
                }
            }
                
            .padding()
            if authenticationDidSucceed == true {
                //loginAccess = true
                Text("Login succeeded!")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.yellow)
                    .cornerRadius(20.0)
                
                
            
                    //.animation(Animation.default)
                
                
            }
            
            
        }
        
        
    }
    
     
   
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct HelloText: View {
    var body: some View {
        Text("Welcome to ")
            .fontWeight(.light)
            //.padding(.bottom, 2)
        Text("SmartPort✈️")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 2)
    }
}

struct UserImage: View {
    var body: some View {
        Image("loginImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(1)
            .padding(.bottom, 15)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            
    }
}

struct PasswordSecureField: View {
    
    @Binding var PIN: String
    
    var body: some View {
        
        SecureField("ENTER PIN", text: $PIN)
            .padding()
            .keyboardType(.numberPad)
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct departmentTypeMenu: View{
    
    @State var selectedDept = "Select Department"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedDept = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedDept = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedDept = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedDept == "Select Department"){
                    Text(selectedDept + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedDept + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "tag")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}
