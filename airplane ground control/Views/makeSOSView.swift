//
//  makeSOSView.swift
//  airplane ground control
//
//  Created by Aditya Tyagi  on 17/03/23.
//

import Foundation
import SwiftUI
import UIKit

struct makeSOSView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct makeSOSView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(){
            VStack{
                HStack{
                    locationTypeMenu()
                    flightTypeMenu()
                }
                emergencyIntensityTypeMenu()
                emergencyTypeMenu()
                assignTypeMenu()
                emergencyDescriptionBox()
            }.padding(.bottom, 40)
            HStack{
                CameraView().padding(.leading, 20)
                ContenttView().padding(.trailing, 20)
            }.padding(.leading, 10)
            submitSOS().padding(.top, -30).padding(.bottom, 70)
        }.navigationBarTitle("SmartPort✈️")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top, 105)
    }
}




struct locationTypeMenu: View{
    
    @State var selectedLocation = "Select Location"
    
    var body: some View {
        Menu{
            Button(action: {
                selectedLocation = "Terminal 1"
            }, label: {
                Text("Terminal 1")
            })
            Button(action: {
                selectedLocation = "Terminal 2"
            }, label: {
                Text("Terminal 2")
            })
            Button(action: {
                selectedLocation = "Terminal 3"
            }, label: {
                Text("Terminal 3")
            })
        } label: {
            Label(
                title:{ if(selectedLocation == "Select Location"){
                    Text(selectedLocation + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedLocation + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "location").foregroundColor(.black)
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 175, height: 60)
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
                selectedFlight = "BX 2308"
            }, label: {
                Text("BX 2308")
            })
            Button(action: {
                selectedFlight = "PQ 9714"
            }, label: {
                Text("PQ 9714")
            })
            Button(action: {
                selectedFlight = "TR 2834"
            }, label: {
                Text("TR 2834")
            })
        } label: {
            Label(
                title:{ if(selectedFlight == "Select Flight"){
                    Text(selectedFlight + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedFlight + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "airplane").foregroundColor(.black)
                },
            icon:{Image("plus")}
            )
            .font(.headline)
            .foregroundColor(lightGreyColor2)
            .padding()
            .frame(width: 175, height: 60)
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
                    Image(systemName: "exclamationmark.bubble").foregroundColor(.black)
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
    
    @State var selectedAssignedOfficer = "Assign                       "
    
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
                title:{ if(selectedAssignedOfficer == "Assign                       "){
                    Text(selectedAssignedOfficer + "                                          ").background(lightGreyColor)
                }else{
                    Text(selectedAssignedOfficer + "                                                            ").foregroundColor(.black).shadow(radius: -5)
                }
                    Image(systemName: "person.circle").foregroundColor(.black)
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
                    Image(systemName: "xmark.octagon").foregroundColor(.black)
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
                        .background(lightGreyColor)
                        .foregroundColor(lightGreyColor)
                        .cornerRadius(12)
                        .frame(width: 360, height: 60)
                        
    }
}




struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
        
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType
        imagePicker.delegate = context.coordinator // confirming the delegate
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }

    // Connecting the Coordinator class with this struct
    func makeCoordinator() -> Coordinator {
        return Coordinator(picker: self)
    }
}

struct ContenttView: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        NavigationView {
            HStack{
                HStack{
                    Button("Select  ") {
                        self.sourceType = .camera
                        self.isImagePickerDisplay.toggle()
                    }.padding(.leading, -5)
                        .font(.system(size: 30))
                    if selectedImage != nil {
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }

                }.font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 158, height: 50)
                    .background(Color.black)
                    .cornerRadius(35.0)
            }
            .sheet(isPresented: self.$isImagePickerDisplay) {
                ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
            }
            
        }
    }
}


struct capturePictureButtonContent: View {
    var body: some View {
        Text("Take a Picture..")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 178, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: ImagePickerView
    
    init(picker: ImagePickerView) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
    
}


struct CameraView: View {

    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil

    var body: some View {
        HStack {

            image?.resizable()
                .scaledToFit()

            Button("Open") {
                self.showImagePicker = true
            }.padding(.leading, -5)
                .font(.system(size: 30))
            
                Image(systemName: "camera")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)

        }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 158, height: 50)
            .background(Color.blue)
            .cornerRadius(35.0).sheet(isPresented: self.$showImagePicker) {
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}



class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @Binding var isShown: Bool
    @Binding var image: Image?

    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        _isShown = isShown
        _image = image
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image = Image(uiImage: uiImage)
        isShown = false
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
    }
}

struct ImagePicker: UIViewControllerRepresentable {

    @Binding var isShown: Bool
    @Binding var image: Image?

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> ImagePickerCoordinator {
        return ImagePickerCoordinator(isShown: $isShown, image: $image)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        if !UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .photoLibrary
        } else {
            picker.sourceType = .camera
        }
        return picker
    }

}

struct PhotoCaptureView: View {

    @Binding var showImagePicker: Bool
    @Binding var image: Image?


    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#if DEBUG
struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
#endif

struct submitSOS: View{
    var body: some View{
        Button("Submit") {
        }.foregroundColor(.white)
            .padding()
            .font(.system(size: 31))
            .frame(width: 158, height: 50)
            .background(Color.red)
            .cornerRadius(35.0)
    }
    
}
