//
//  ImageDataModel.swift
//  newgithub
//
//  Created by Ashley Ramirez on 6/15/23.
//

import Foundation
import SwiftUI
struct ImageNote : Codable, Hashable, Identifiable{
    var id = UUID ()
    var image: Data
    var title: String
    var description: String
}
@MainActor class ImageData : ObservableObject{
    private let IMAGES_KEY = "ImagesKey"
    var imageNote: [ImageNote]{
        didSet{
            objectWillChange.send ()
        }
    }
    init(){
        if let data = UserDefaults.standard.data(forKey:IMAGES_KEY){
            if let decodedNotes = try? JSONDecoder().decode([ImageNote].self, from: data){
                imageNote = decodedNotes
                print("Note data succesfully retreived!")
                return
            }
        }
        imageNote = []
    }
    func addNote(image: UIImage, title: String, desc: String){
        if let pngRepresentation = image.pngData() {
            let tempNote = ImageNote(image: pngRepresentation, title: title, description: desc)
            imageNote.insert(tempNote, at:0)
            print ("Note added!")
        }
    }
    func editNote(id: UUID, title: String, description: String){
        if let note = imageNote.first(where: {$0.id == id}){
            let index = imageNote.firstIndex(of:note)
            
            imageNote[index!].title = title
            imageNote[index!].description = description
            
        }
    }
    
    private func saveData () {
        if let encodedNotes = try? JSONEncoder().encode(imageNote){
            UserDefaults.standard.set(encodedNotes, forKey: IMAGES_KEY)
        }
        
    }
    func resetUserData () {
        UserDefaults.standard.removeObject(forKey: IMAGES_KEY)
        UserDefaults.resetStandardUserDefaults()
        
        imageNote = []
        
    }
}

