//
//  PhotoPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//
import SwiftUI
struct PhotoPage: View {
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    
    var body: some View {
        NavigationView{
            VStack{
                if imageData.imageNote.isEmpty {
                    Text("Add a photo")
                        .italic()
                        .foregroundColor(.gray)
                    
                }else{
                    HomeView()
                    
                }
            }
            .navigationTitle("Upload")
            .sheet(isPresented: $showImagePicker){
                ImagePicker(sourceType: .photoLibrary){
                    image in
                    imageData.addNote(image: image, title: "Title", desc: "")
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showImagePicker.toggle()
                    }label: {
                        Label ("Image", systemImage: "photo.on.rectangle.angled")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        withAnimation {
                            imageData.resetUserData()
                        }
                    }label: {
                        Label ("Trash", systemImage: "trash")
                    }
                    .tint(.red)
                }
            }
            
        }
        .environmentObject(imageData)
    }
}
        
struct PhotoPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

