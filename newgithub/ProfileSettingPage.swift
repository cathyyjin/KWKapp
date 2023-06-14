//
//  ProfileSettingPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct ProfileSettingPage: View {
    @State var username = ""
    @State var SavedName = ""
    var body: some View {
        VStack{
            
            Text("\(SavedName)")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            Text("Enter Your Name!")
                .font(.title)
                .fontWeight(.semibold)
            
                 TextField("Enter Your Name", text: $username)
                .font(.title)
            
                 Button (action: {saveData()}){
                Text("Save")
            }
                 Spacer()
            
                 }.onAppear(perform: {
                getData()
            })
        
    }
    func saveData(){
        UserDefaults.standard.set(self.username, forKey: "UserName")
        }
    func getData(){
                SavedName = "Welcome: \(UserDefaults.standard.string(forKey:"UserName") ?? "")"
        
                }
}


struct ProfileSettingPage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingPage()
    }
}
