//
//  nonAuthView.swift
//  airplane ground control
//
//  Created by Aditya Tyagi  on 09/03/23.
//

import SwiftUI


struct nonAuthView: View {
    var body: some View {
        ZStack{
            VStack{
                nonAuthImage()
                nonAuthDescription()
                nonAuthDescription2()
            }
        }
       
    }
}

struct nonAuthView_Previews: PreviewProvider {
    static var previews: some View {
        nonAuthView()
            
    }
}


struct nonAuthDescription: View {
    var body: some View {
        Text("SORRY!!☹️").font(.custom("Chalkduster", fixedSize: 50)).multilineTextAlignment(.center).foregroundColor(.red).padding(.top, 5)
        Text("Your email domain is not enabled for SmartPort app access for any airport. If your company operates at an airport which is using SmartPort app, please contact support@smartport.com indicating the airport you operate from.")
            .font(.headline)
            .multilineTextAlignment(.center)
            .frame(width: 356, height: 300)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.black)
            .padding(.top, -115)
    }
}

struct nonAuthDescription2: View {
    var body: some View {
        Text("SMARTPORT✈️")
            .font(.body)
            // .frame(width: 356, height: 400)
            .aspectRatio(contentMode: .fill)
            .foregroundColor(.black)
            .padding(.top, 170)
    }
}

struct nonAuthImage: View {
    var body: some View {
        Image("nonAuthImage").resizable()
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(1)
            .padding(.top, 110)
    }
}
