//
//  makeSOSView.swift
//  airplane ground control
//
//  Created by Aditya Tyagi  on 17/03/23.
//

import SwiftUI

struct makeSOSView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct makeSOSView_Previews: PreviewProvider {
    static var previews: some View {
       //  makeSOSView()
        VStack{
            locationTypeMenu()
            flightTypeMenu()
            emergencyIntensityTypeMenu()
            emergencyTypeMenu()
            assignTypeMenu()
            emergencyDescriptionBox()
        }.navigationTitle("Make a 🆘").navigationBarTitleDisplayMode(.inline)
    }
}




struct locationTypeMenu: View{
    
    @State var selectedLocation = "Select Location"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedLocation = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedLocation = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedLocation = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedLocation == "Select Location"){
                    Text(selectedLocation + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedLocation + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "location")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}

struct flightTypeMenu: View{
    
    @State var selectedFlight = "Select Flight"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedFlight = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedFlight = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedFlight = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedFlight == "Select Flight"){
                    Text(selectedFlight + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedFlight + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "airplane")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}

struct emergencyTypeMenu: View{
    
    @State var selectedEmergencyCase = "Emergency Type"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedEmergencyCase = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedEmergencyCase = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedEmergencyCase = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedEmergencyCase == "Emergency Type"){
                    Text(selectedEmergencyCase + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedEmergencyCase + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "exclamationmark.bubble.fill")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}

struct assignTypeMenu: View{
    
    @State var selectedAssignedOfficer = "Assign"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedAssignedOfficer = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedAssignedOfficer = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedAssignedOfficer = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedAssignedOfficer == "Assign"){
                    Text(selectedAssignedOfficer + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedAssignedOfficer + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
            Image(systemName: "person.circle.fill")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}


struct emergencyIntensityTypeMenu: View{
    
    @State var selectedEmergencyIntensity = "Emergency Intensity"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedEmergencyIntensity = "Ground Staff"
            }, label: {
                Text("Ground Staff")
            })
            Button(action: {
                selectedEmergencyIntensity = "Crew Staff"
            }, label: {
                Text("Crew Staff")
            })
            Button(action: {
                selectedEmergencyIntensity = "Maintenance Staff"
            }, label: {
                Text("Maintenance Staff")
            })
        } label: {
            Label(
                title:{ if(selectedEmergencyIntensity == "Emergency Intensity"){
                    Text(selectedEmergencyIntensity + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedEmergencyIntensity + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "xmark.octagon.fill")
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 360, height: 60)
            .background(lightGreyColor)
            .cornerRadius(5.0)
        }
    }
}


struct emergencyDescriptionBox: View{
    @State var emergencyDescription: String = "Add Description..."
    var body: some View{
        
        TextEditor(text: $emergencyDescription)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(lightGreyColor)
                        .foregroundColor(lightGreyColor)
                        .cornerRadius(12)
                        .frame(width: 360, height: 300)
    }
}
