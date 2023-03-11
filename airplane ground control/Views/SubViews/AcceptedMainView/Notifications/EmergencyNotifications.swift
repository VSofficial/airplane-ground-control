//
//  EmergencyNotifications.swift
//  airplane ground control
//
//  Created by Varun Sharma on 11/03/23.
//

import SwiftUI

struct EmergencyNotifications: View {
    var body: some View {
        //NavigationView {
            VStack {
                List {
                    NotificationCard()
                    
                }
            }
           
           // .navigationTitle("Notifications")
       // }
        
       Text("Hi")
        
    }
}

struct EmergencyNotifications_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyNotifications()
    }
}
