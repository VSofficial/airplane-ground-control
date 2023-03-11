//
//  WeatherReport.swift
//  airplane ground control
//
//  Created by Varun Sharma on 11/03/23.
//

import SwiftUI

struct WeatherReport: View {
    var body: some View {
        VStack(spacing:10) {
            HStack(spacing:80) {
                VStack {
                    Text("My Location")
                        .bold()
                    
                    Text("Delhi Airport")
                }
                
                VStack {
                    Text("Temperature: 29 D")
                    Text("Humid: 70%")
                }
                
                
            }
            
            
        }
        
        
        
    }
}

struct WeatherReport_Previews: PreviewProvider {
    static var previews: some View {
        WeatherReport()
    }
}
