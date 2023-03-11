//
//  AcceptedMainView.swift
//  airplane ground control
//
//  Created by Varun Sharma on 08/03/23.
//

import SwiftUI

struct AcceptedMainView: View {
    var body: some View {
        VStack {
            
        //    VStack {
                Text("Home")
                
           // }
            
            VStack(spacing:100) {
                
                
                List {
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Emergency Notifications ")
                    })
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Chats ")
                    })
                    
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("My Schuedule")
                    })
                    
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Make a SOS")
                    })
                    
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Weather Report")
                    })
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Flight Schedule")
                    })
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Other seats")
                    })
                    
                    
                   
                       
                        
                     
                  
                }
                
              
            }
            
        }
    }
    
    func buttonAction() {
        print("pressed")
    }

    
}

struct AcceptedMainView_Previews: PreviewProvider {
    static var previews: some View {
        AcceptedMainView()
    }
}




