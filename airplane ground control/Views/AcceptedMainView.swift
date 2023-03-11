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
                
                
                List() {
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                       Text("Emergency Notifications")
                            .badge(5)
                    })
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Chats ")
                            .badge("Unread 4")
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
                            .badge("0 brodcasts")
                    })
                    
                    
                    Button(action: {
                        buttonAction()
                    }, label: {
                        Text("Weather Report")
                            .badge("HOT/23F")
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




