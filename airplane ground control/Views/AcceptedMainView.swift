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
            
            VStack(spacing: -13) {
                    HStack(spacing: -100){
                        
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label:{
                                HStack(spacing: 2){
                                    Text("Notifications").font(.system(size: 25))
                                    Text("🔔").font(.system(size: 45)).shadow(color: Color.green ,radius: 12)
                                }
                            }).tint(.blue)
                                .frame(width: 350, height: 78)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding(.trailing, 9)
                                .shadow(radius: 12)
                        })

                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack{
                                    Text("💬").font(.system(size: 45))
                                }
                            }).tint(.green)
                                .frame(width: 150, height: 70)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                    }.padding(.top, 20)
                    .padding(.bottom, 0)
                    .padding(.leading, -10)
                
                    HStack(spacing: -70){
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack(spacing: 8){
                                    Text("Call     ").fontWeight(.medium).font(.system(size: 19))
                                    Image(systemName: "sos").resizable().frame(width: 60.0, height: 25.0)
                                }
                            }).tint(.red)
                                .frame(width: 210, height: 60)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .shadow(radius: 12)
                        })
                        
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                HStack(spacing: 8){
                                    Text("My \n Schuedule ").fontWeight(.medium).font(.system(size: 22))
                                    Text("⏳").font(.system(size: 45))
                                }
                            }).tint(.yellow)
                                .frame(width: 250, height: 90)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                    }.padding(.bottom, 5)
                    .padding(.leading, -12)
                
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            VStack(spacing: 0){
                                HStack{
                                    Text("Weather Report  ").font(.system(size: 33))
                                    Text("🌥️").font(.system(size: 52))
                                }
                                HStack(spacing: -22){
                                    Text("23°").frame(width: 100)
                                        .font(.system(size: 56, weight: .heavy, design: .default))
                                        .foregroundColor(Color.yellow)
                                        .padding(.leading, 5)
                                        .padding(.top, -20)
//                                    Text("HOT/23F").frame(minWidth: 0, maxWidth: 120)
//                                        .font(.system(size: 18))
//                                        .padding()
//                                        .foregroundColor(.white)
                                    VStack(spacing:-3){
                                        Image(systemName: "thermometer.sun")
                                            .font(.system(size: 30.0))
                                        
                                            .foregroundColor(Color.yellow)
                                        Text("73%").frame(minWidth: 0, maxWidth: 50)
                                            .font(.system(size: 18))
                                            .padding()
                                            .foregroundColor(.white)
                                    }.padding(.leading, 27)
                                    VStack{
                                        Image(systemName: "wind.snow")
                                            .font(.system(size: 30.0))
                                            .foregroundColor(Color.yellow)
                                        Text("3mph").frame(minWidth: 0, maxWidth: 50)
                                            .font(.system(size: 18))
                                            .padding()
                                            .foregroundColor(.white)
                                    }.padding(.leading, 16)
                                }
                                Text(" Wednesday            23-02-2023").font(.system(size: 16, weight: .heavy, design: .default))
                            }

                        }).tint(.green)
                            .frame(width: 340, height: 140)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .shadow(radius: 12)
                    }).padding(.top, 20)
                    .padding(.bottom, 30)
                
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            VStack(spacing: 12){
                                HStack{
                                    Text("Flights Schedule").font(.system(size: 34))
                                    Text("🛩️").font(.system(size: 44)).shadow(color: Color.white ,radius: 12)
                                }
                                HStack(spacing: 22){
                                    Text("20:18").frame(minWidth: 0, maxWidth: 50)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("BA 903").frame(minWidth: 0, maxWidth: 80)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("ON TIME").font(.system(size: 14)).bold()
                                        .frame(width: 75)
                                       //  .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.pi)
                                        .background(Color.green)
                                        .cornerRadius(12)
                                }.padding(.leading)
                                HStack(spacing: 22){
                                    Text("20:30").frame(minWidth: 0, maxWidth: 50)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("CX5471").frame(minWidth: 0, maxWidth: 80)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("DELAYED").font(.system(size: 12)).bold()
                                        .frame(width: 75)
                                        //.fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.pi)
                                        .background(Color.yellow)
                                        .cornerRadius(12)
                                }.padding(.leading)
                                HStack(spacing: 22){
                                    Text("20:45").frame(minWidth: 0, maxWidth: 50)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("LH3494").frame(minWidth: 0, maxWidth: 80)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white)
                                    Text("CANCELLED").font(.system(size: 12)).bold()
                                        .frame(width: 75)
                                        // .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.pi)
                                        .background(Color.red)
                                        .cornerRadius(12)
                                }.padding(.leading)
                            }
                            
                        }).tint(.blue)
                            .frame(width: 340, height: 180)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .shadow(radius: 12)
                    })
                
                    HStack(spacing: -55){
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack{
                                    VStack(spacing: 4.5){
                                        Text("Baggage").font(.system(size: 29)).foregroundColor(.brown)
                                        Text("🧳").font(.system(size: 37)).shadow(radius: 3)
                                    }
                                }
                            }).tint(.white)
                                .frame(width: 200, height: 110)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 8)
                        })
                        
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack{
                                    VStack(spacing: 4){
                                        Text("Runway").font(.system(size: 27))
                                        Text("🛬  🛫").font(.system(size: 40)).shadow(color: .white, radius: 3)
                                    }
                                }
                            }).tint(Color.gray)
                                .frame(width: 215, height: 110)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 8)
                        })
                    }.padding([.leading])
                }
            .navigationBarTitle("SmartPort✈️").font(.system(size: 45))
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
func buttonAction() {
    print("pressed")
}

struct AcceptedMainView_Previews: PreviewProvider {
    static var previews: some View {
        AcceptedMainView()
    }
}




