//
//  NotificationCard.swift
//  airplane ground control
//
//  Created by Varun Sharma on 11/03/23.
//

import SwiftUI

struct NotificationCard: View {
    var body: some View {
        VStack(spacing:10) {
            HStack(spacing:80) {
                Text("Notification Title")
                    .bold()
                Text("23/05/2023")
            }
            
            Text("List view is straightforward but very powerful. You can use it similarly to other SwiftUI views")
            
        }
        
    }
}
