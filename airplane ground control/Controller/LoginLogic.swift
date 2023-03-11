//
//  Logic.swift
//  airplane ground control
//
//  Created by Varun Sharma on 11/03/23.
//

import Foundation
import SwiftUI

struct LoginLogic {
    
    func CheckAuthentication() {
        
    }
    
    func NavigateLoginAccess() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: AcceptedMainView())
            window.makeKeyAndVisible()
        }
    }


}

