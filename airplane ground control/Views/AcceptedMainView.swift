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
            
                
            VStack(spacing: -1) {
                    HStack(spacing: -100){
                        //1
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                            
                                HStack(spacing: 18){
                                    Text("Emergency\nNotifications").font(.system(size: 20)).padding([.trailing])
                                    Text("🔔").font(.system(size: 45)).shadow(color: Color.green ,radius: 12)
                                }
                            }).tint(.blue)
                                .frame(width: 350, height: 78)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                        
                        
                        //2
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack{
                                    Text("💬").font(.system(size: 48))
                                }
                            }).tint(.green)
                                .frame(width: 150, height: 70)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                    }.padding([.trailing])
                
                    HStack(spacing: -69){
                        //6
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                VStack(spacing: 8){
                                    Text("Call     ").fontWeight(.medium).font(.system(size: 19))
                                    Image(systemName: "sos").resizable().frame(width: 60.0, height: 25.0)
                                }
                            }).tint(.red)
                                .frame(width: 200, height: 60)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                        
                        //5
                        NavigationLink(destination: EmergencyNotifications(), label: {
                            Button(action: {
                                buttonAction()
                            }, label: {
                                HStack(spacing: 8){
                                    Text("My \n Schuedule ").fontWeight(.medium).font(.system(size: 22))
                                    Text("⏳").font(.system(size: 45))
                                }
                            }).tint(.orange)
                                .frame(width: 250, height: 90)
                                .controlSize(.large)
                                .buttonStyle(.borderedProminent)
                                .padding()
                                .shadow(radius: 12)
                        })
                    }.padding([.trailing])

                    //7
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Weather Report  ").font(.system(size: 33))
                                .badge("HOT/23F")
                            Text("🌦️").font(.system(size: 52))

                        }).tint(.yellow)
                            .frame(width: 1000, height: 80)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .shadow(radius: 12)
                    })
                    //3
                    NavigationLink(destination: EmergencyNotifications(), label: {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text("Flights Schedule").font(.system(size: 34))
                                .badge("HOT/23F")
                            Text("✈️").font(.system(size: 47)).shadow(color: Color.white ,radius: 12)
                        }).tint(.green)
                            .frame(width: 1000, height: 90)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .shadow(radius: 12)
                    })
                
                    HStack(spacing: -55){
                        //4
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
            .navigationTitle("SmartPort").font(.system(size: 45))
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




