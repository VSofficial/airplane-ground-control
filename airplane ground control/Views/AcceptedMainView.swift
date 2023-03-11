//
//  AcceptedMainView.swift
//  airplane ground control
//
//  Created by Varun Sharma on 08/03/23.
//

import SwiftUI

struct AcceptedMainView: View {
    var body: some View {
        NavigationView {
            
                
            VStack(spacing:100) {
                
                
                List() {
                    
                    //1
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                        
                                Text("Emergency Notifications")
                                     .badge(5)
                            }
                         
                        )
                    })
                    
                    
                    
                    //2
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Chats ")
                                .badge("Unread 4")
                        })
                    })
                    
                    
                  
                    
                    //5
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("My Schuedule")
                        })
                    })
                    
                    //6
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Make a SOS")
                                .badge("0 brodcasts")
                        })
                    })
                    
                    //7
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Weather Report")
                                .badge("HOT/23F")
                        })
                    })
                 
                    
                    
                    
                    //3
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Flight Schedule")
                        })
                    })
                    
                    //4
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Other seats")
                        })
                    })
                    
                   
                    
                    
                    
                }
                
                .navigationTitle("Home")
                
               
                
              
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




