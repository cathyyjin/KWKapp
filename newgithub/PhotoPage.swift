//
//  PhotoPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//
import SwiftUI

struct PhotoPage: View {
    
    
    
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType:
    UIImagePickerController.SourceType = .photoLibrary
    
    
    var body: some View {
        
        VStack {
            Image(uiImage: selectedImage ??
                  UIImage(named: "camera")!)
            .resizable ()
            .aspectRatio(contentMode: .fit)
            
            
            HStack {
                
                Button ("Select a Photo"){
                    self.sourceType = .photoLibrary
                    isImagePickerShowing = true
                    
                }
                .padding ()
                
                Button ("Take a Photo") {
                    self.sourceType = .camera
                    isImagePickerShowing = true
                
                }
                .padding ()
                
            }
        }
        .sheet(isPresented: $isImagePickerShowing){
            ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
        }
    }
}

struct PhotoPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
